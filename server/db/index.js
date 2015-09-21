var Sequelize = require('sequelize');
// sequelize initialization
var sequelize = new Sequelize('beautydb', 'root');

var User = sequelize.define('User', {
  id: { type: Sequelize.INTEGER, autoIncrement: true, allowNull: false, primaryKey: true },
  name: { type: Sequelize.STRING(32), allowNull: false },
  password: { type: Sequelize.STRING(32) },
  sessionId: { type: Sequelize.STRING(256), allowNull: false }
});

var Maker = sequelize.define('Maker', {
  id: { type: Sequelize.INTEGER, autoIncrement: true, allowNull: false, primaryKey: true },
  name: { type: Sequelize.STRING(32), allowNull: false }
});

var Category = sequelize.define('Category', {
  id: { type: Sequelize.INTEGER, autoIncrement: true, allowNull: false, primaryKey: true },
  name: { type: Sequelize.STRING(32), allowNull: false }
});

var Tag = sequelize.define('Tag', {
  id: { type: Sequelize.INTEGER, autoIncrement: true, allowNull: false, primaryKey: true },
  tag: { type: Sequelize.STRING(32), allowNull: false }
});

var Product = sequelize.define('Product', {
  id: { type: Sequelize.INTEGER, autoIncrement: true, allowNull: false, primaryKey: true },
  name: { type: Sequelize.STRING(32), allowNull: false },
  color: { type: Sequelize.STRING(32) },
  notes: { type: Sequelize.STRING(140) },
  size: { type: Sequelize.STRING(32) }
});

var Site = sequelize.define('Site', {
  id: { type: Sequelize.INTEGER, autoIncrement: true, allowNull: false, primaryKey: true },
  name: { type: Sequelize.STRING(32), allowNull: false },
  url: { type: Sequelize.STRING(140), allowNull: false }
});

//Establish a connection between product & Category/Category.expiration/Tag/Maker
Product.belongsTo(Category)
Product.belongsTo(Maker)

module.exports = sequelize;
