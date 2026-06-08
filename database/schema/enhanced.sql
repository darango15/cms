-- Enhanced Product/Course System Database Schema

-- 1. Categories Table (separate from products)
CREATE TABLE IF NOT EXISTS categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    slug VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    icon VARCHAR(50),
    display_order INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_slug (slug)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. Product Reviews/Ratings Table
CREATE TABLE IF NOT EXISTS product_reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    user_id INT NULL,
    user_name VARCHAR(100),
    rating INT NOT NULL CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    INDEX idx_product (product_id),
    INDEX idx_rating (rating)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Related Products Table
CREATE TABLE IF NOT EXISTS related_products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    related_product_id INT NOT NULL,
    display_order INT DEFAULT 0,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    FOREIGN KEY (related_product_id) REFERENCES products(id) ON DELETE CASCADE,
    UNIQUE KEY unique_relation (product_id, related_product_id),
    INDEX idx_product (product_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. Modify Products Table
-- Add new columns to existing products table
ALTER TABLE products 
    ADD COLUMN IF NOT EXISTS category_id INT AFTER slug,
    ADD COLUMN IF NOT EXISTS imo_model_course_no VARCHAR(20) AFTER category_id,
    ADD COLUMN IF NOT EXISTS duration_hours INT DEFAULT 0 AFTER imo_model_course_no,
    ADD COLUMN IF NOT EXISTS avg_rating DECIMAL(3,2) DEFAULT 0.00 AFTER duration_hours,
    ADD COLUMN IF NOT EXISTS total_reviews INT DEFAULT 0 AFTER avg_rating;

-- Add foreign key for category_id (after categories are populated)
-- ALTER TABLE products ADD FOREIGN KEY (category_id) REFERENCES categories(id);

-- Insert default categories (migrating from old category column)
INSERT INTO categories (name, slug, description, icon, display_order) VALUES
('General', 'general', 'General maritime courses', 'fa-ship', 1),
('Competence Courses', 'competence', 'STCW competence-based training courses', 'fa-graduation-cap', 2),
('Indian Courses', 'indian', 'DGS approved courses for Indian seafarers', 'fa-anchor', 3),
('Latin Courses', 'latin', 'Courses for Latin American maritime professionals', 'fa-globe-americas', 4)
ON DUPLICATE KEY UPDATE name=name;
