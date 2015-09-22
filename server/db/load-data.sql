USE beautydb;

INSERT INTO Users (name, password, sessionId) VALUES
  ('lauraweaver', 'blahblahblah', null);

INSERT INTO Categories (name, createdAt, updatedAt) VALUES
  ('Skincare', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Makeup', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Perfume', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Nails', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Hair', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO Makers (name, createdAt, updatedAt) VALUES
  ('Jo Malone', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Oribe', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('AmorePacific', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('RetinA', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('La Mer', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Kate Somerville', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('R+Co', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('SK-II', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Sunday Riley', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Shiseido', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Bioderma', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Burberry', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('LaNeige', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Mario Badescu', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Charlotte Tilbury', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('MoroccanOil', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Bio-Oil', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Byredo Parfums', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Make Up For Ever', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Bite', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Givenchy', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Anastasia Beverly Hills', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Marc Jacobs', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('St. Topez', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Urban Decay', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Benefit', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('OPI', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Butter', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Smashbox', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Bobbi Brown', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('rms', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Sephora', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Lipstick Queen', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Topshop', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('nails, inc.', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Babor', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Murad', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Living Proof', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('drybar', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('karina', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Glossier', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Cle de Peau', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('it Cosmetics', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Nars', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Sisley', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Amazing Cosmetics', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Nordstrom', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Avst Environ', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Valmont', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Cellcomet', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Biologique Recherche', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('CO Bigelow', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('fresh', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Boscia', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Yon-Ka', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO Tags (tag, createdAt, updatedAt) VALUES 
  ('Barrow', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Jetset', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Korea', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Cult', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Travel Size', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Hand', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Lotion', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Hair', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Face', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Facewash', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Perfume', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Eye', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Mask', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Night', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO Products (name, color, notes, size, createdAt, updatedAt, CategoryId, MakerId, UserId) VALUES
  ('Vitamin E Hand Treatment', NULL, 'Adam has this.', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Jo Malone'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Dry Texturizing Spray', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Hair'), (SELECT id FROM Makers WHERE name='Oribe'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Treatment Cleansing Foam', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='AmorePacific'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('RetinA', NULL, 'Super strong. Don\'t use more than 3x/week', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='RetinA'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('The Moisturizing Lotion', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='La Mer'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('The Moisturizing Cream', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='La Mer'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('ExfoliKate', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Kate Somerville'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Aircraft Pomade', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Hair'), (SELECT id FROM Makers WHERE name='R+Co'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Facial Treatment Clear Lotion', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='SK-II'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Start Over Active Eye Gel Cream', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Sunday Riley'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Luna Sleeping Night Oil', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Sunday Riley'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Ultimate Sun Protection Lotion+', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Shiseido'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Créaline H2O', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Bioderma'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Olio Lusso', NULL, 'Almost out', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Robin'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Clinical Clearing Gel', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Clinique'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Fresh Glow', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Water Sleeping Mask', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='LaNeige'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Vitamen C Serum', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Mario Badescu'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Charlotte\'s Magic Cream', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Charlotte Tilbury'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Facial Treatment Essence', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='SK-II'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Agron Treatment', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Hair'), (SELECT id FROM Makers WHERE name='MoroccanOil'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('PurCellin Oil', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Bio-Oil'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Mojave Ghost', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Perfume'), (SELECT id FROM Makers WHERE name='Byredo Parfums'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Aqua Liner', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Make Up For Ever'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Matte Creme Lip Crayon', 'Fraise', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Bite'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Noir Couture Volume Mascara', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Givenchy'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Effortless Kohl Eyeliner', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Brow Wiz', NULL, 'Prefer compared to shadow.', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Anastasia Beverly Hills'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Gel Crayon', 'Silver', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Marc Jacobs'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lip Definer', 'Rosewood', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Eye Definer', 'Midnight Ash', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Skin Illuminator', 'Gold', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='St. Topez'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Naked 2', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Urban Decay'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Sugarbomb', NULL, 'Good brush inside', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Benefit'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Sheer Foundation', NULL, 'Massive number of samples in large makeup bag under sink', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Nail Lacquer', 'Ballet Slippers', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Nails'), (SELECT id FROM Makers WHERE name='OPI'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Nail Polish', 'Artful Dodger', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Nails'), (SELECT id FROM Makers WHERE name='Butter'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Eye Palettte', 'Velvet Plum', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Bobbi Brown'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Eye Shadow', 'Slate', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Bobbi Brown'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lip Cream', 'Bloom', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='rms'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Creaseless Cream Shadow', 'Grey Jeans', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Benefit'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Creamy Lip Color', 'Pale Mauve', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Bobbi Brown'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lip Matte', 'Always Red', 'Full coverage', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Sephora'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lipstick', 'Medival', 'Snake bite color', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Lipstick Queen'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lips', 'Hot Pink', 'Wore in Kuala Lumpur', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Topshop'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Nails', 'Rainy Day', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Nails'), (SELECT id FROM Makers WHERE name='Topshop'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Nails', 'Seafoam', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Nails'), (SELECT id FROM Makers WHERE name='Topshop'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Nail Lacquer', 'Deep Navy (Old Bond Street)', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Nails'), (SELECT id FROM Makers WHERE name='nails, inc.'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Nail Lacquer', 'Purple(St. Martin\'s Lane)', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Nails'), (SELECT id FROM Makers WHERE name='nails, inc.'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Styling Paste', NULL, 'Under the sink', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Hair'), (SELECT id FROM Makers WHERE name='R+Co'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Intense Purifying Mask', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Babor'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Clarifying Toner', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Murad'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Glossy Wax', NULL, 'A bit thick for everday use.', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Hair'), (SELECT id FROM Makers WHERE name='R+Co'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Flex Shaping Hairspray', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Hair'), (SELECT id FROM Makers WHERE name='Living Proof'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Shine Pomade', NULL, 'Use when needing polished hair.', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Hair'), (SELECT id FROM Makers WHERE name='drybar'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Herbal Toner', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Hair'), (SELECT id FROM Makers WHERE name='karina'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Purifying Cleanser', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='karina'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Perfecting Skin Tint', 'Light', 'Super sheer; use when hot outside.', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Glossier'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Shade and Illuminate', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Tom Ford'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('CC Cushion Compact', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='AmorePacific'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Sheer Eye Shadow', 'Almond', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Sheer Eye Shadow', 'Rosewood', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Sheer Eye Shadow', 'Trench', 'Base shadow', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Sheer Eye Shadow', 'Shell', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Concealer', NULL, 'Primary Concealer', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Cle de Peau'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Bye Bye Under Eye', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='it Cosmetics'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Velvet Matte', 'Cruella', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Nars'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Phyto-ombre Glow', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Sisley'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Concealer', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Amazing Cosmetics'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Eye Colour Cream', 'Dusky Mauve', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Light Glow', 'Earthy Blush', 'Can be used as eye shadow or bronzer', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Eye Gel', 'Black Ink', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Bobbi Brown'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lip Color', 'Nude Cashmere', 'Primary Lipstick', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lip Glow', 'Nude Beige', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lip Glow', 'Oxblood', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lip Glow', 'Nude Rose', 'Mix with Nude Kate or Nude Cashmere.', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Burberry'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lipstick', 'Nude Kate', 'Mixed with Burberry Nude Rose gloss.', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Charlotte Tilbury'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('The Lip Balm', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='La Mer'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lip Balm', NULL, NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='La Mer'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Facial Treament Masque', NULL, 'In Fridge. Can be reused.', 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='SK-II'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('3D Liner', 'Plum', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Smashbox'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('3D Liner', 'Midnight', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Smashbox'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('3D Liner', 'Navy', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Smashbox'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('3D Liner', 'Light Grey', NULL, 'Full', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Makeup'), (SELECT id FROM Makers WHERE name='Smashbox'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Facial Treatment Clear Lotion', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='SK-II'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Body Gel Moussant', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Jo Malone'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('English Pair and Freesia Cologne', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Perfume'), (SELECT id FROM Makers WHERE name='Jo Malone'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('The Treatment Lotion', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='La Mer'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('The Intensive Revitalizing Mask', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='La Mer'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Future Response Age Defense Creme', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='AmorePacific'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Make-Up Remover Wipes', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Nordstrom'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Eye Gel', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Avst Environ'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Hydrating Exfoliant', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Avst Environ'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Signature Shampoo and Masque', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Hair'), (SELECT id FROM Makers WHERE name='Oribe'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Color Shampoo and Conditioner', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Hair'), (SELECT id FROM Makers WHERE name='R+Co'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Prime Renew Pack', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Valmont'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Purifying Pack', NULL, 'Use on nose.', 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Valmont'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Prime Contour', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Valmont'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Creme Cellulaire Intensive', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Cellcomet'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Creme Aux Acides de Fruit', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Biologique Recherche'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Masque Biosensible', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Biologique Recherche'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Creme Metamorphique', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Biologique Recherche'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Body Lotion', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='CO Bigelow'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('The Eye Concentrate', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='La Mer'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('The Regenerating Serum', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='La Mer'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Peony & Blush Seude Body Creme', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Jo Malone'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Intensive Hand Renewal Creme', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='AmorePacific'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Rejuvenating Eye Treatment Gel', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='AmorePacific'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Age Defense Dual Eye Creme', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='AmorePacific'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Broad Spectrum SPF 30', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Murad'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lotus Youth Preserve Face Cream', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='fresh'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Detoxifying Cleanser', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Boscia'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Luminizing Black Mask', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Boscia'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Corseting Serum', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Valmont'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Revitalizing Black Hydration Gel', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Boscia'), (SELECT id FROM Users WHERE name='lauraweaver')),
  ('Lotion Yon-Ka', NULL, NULL, 'Travel', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, (SELECT id FROM Categories WHERE name='Skincare'), (SELECT id FROM Makers WHERE name='Yon-Ka'), (SELECT id FROM Users WHERE name='lauraweaver'));

INSERT INTO Sites (name, url, createdAt, updatedAt) VALUES
  ('Into the Gloss', 'https://wwww.intothegloss.com/', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Lisa Eldridge', 'http://www.lisaeldridge.com/', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Refinery29-Beauty Blogs', 'http://www.refinery29.com/beauty-blogs', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Beauty Banter', 'http://beautybanter.com/', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('Dasha Edelich, Edelich', 'http://edelich.com/', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
