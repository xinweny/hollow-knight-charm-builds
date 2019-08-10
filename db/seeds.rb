Charm.destroy_all

charm_details = [{
  name: 'Wayward Compass',
  notches: 1,
  description: 'Whispers its location to the bearer whenever a map is open.'
},
{
  name: 'Gathering Swarm',
  notches: 1,
  description: 'A swarm will follow the bearer and gather up any loose Geo.'
},
{
  name: 'Stalwart Shell',
  notches: 2,
  description: 'When recovering from damage, the bearer will remain invulnerable for longer.'
},
{
  name: 'Soul Catcher',
  notches: 2,
  description: 'Increases the amount of SOUL gained when striking an enemy with the nail.'
},
{
  name: 'Shaman Stone',
  notches: 3,
  description: 'Increases the power of spells, dealing more damage to foes.'
},
{
  name: 'Soul Eater',
  notches: 4,
  description: 'Greatly increases the amount of SOUL gained when striking an enemy with the nail.'
},
{
  name: 'Dashmaster',
  notches: 2,
  description: 'The bearer will be able to dash more often as well as dash downwards.'
},
{
  name: 'Thorns of Agony',
  notches: 1,
  description: 'When taking damage, sprout thorny vines that damage nearby foes.'
},
{
  name: 'Fury of the Fallen',
  notches: 2,
  description: "When close to death, the bearer's strength will increase."
},
{
  name: 'Spell Twister',
  notches: 2,
  description: 'Reduces the SOUL cost of casting spells.'
},
{
  name: 'Steady Body',
  notches: 1,
  description: 'Keeps its bearer from recoiling backwards when they strike an enemy with a nail.'
},
{
  name: 'Heavy Blow',
  notches: 2,
  description: "Increases the force of the bearer's nail, causing enemies to recoil further when hit."
},
{
  name: 'Quick Slash',
  notches: 3,
  description: 'Allows the bearer to slash much more rapidly with their nail.'
},
{
  name: 'Longnail',
  notches: 2,
  description: "Increases the range of the bearer's nail."
},
{
  name: 'Mark of Pride',
  notches: 3,
  description: "Greatly increases the range of the bearer's nail."
},
{
  name: 'Baldur Shell',
  notches: 2,
  description: 'Protects its bearer with a hard shell while focusing SOUL.'
},
{
  name: 'Flukenest',
  notches: 3,
  description: 'Transforms the Vengeful Spirit spell into a horde of volatile baby flukes.'
},
{
  name: "Defender's Crest",
  notches: 1,
  description: 'Causes the bearer to emit a heroic odour.'
},
{
  name: 'Glowing Womb',
  notches: 2,
  description: 'Drains the SOUL of its bearer and uses it to birth hatchlings.'
},
{
  name: 'Quick Focus',
  notches: 3,
  description: 'Increases the speed of focusing SOUL, allowing the bearer to heal faster.'
},
{
  name: 'Deep Focus',
  notches: 4,
  description: 'The bearer will focus SOUL at a slower rate, but the healing effect will double.'
},
{
  name: 'Lifeblood Heart',
  notches: 2,
  description: 'When resting, the bearer will gain a coating of lifeblood that protects from a modest amount of damage.'
},
{
  name: 'Lifeblood Core',
  notches: 3,
  description: 'When resting, the bearer will gain a coating of lifeblood that protects from a large amount of damage.'
},
{
  name: "Joni's Blessing",
  notches: 4,
  description: 'The bearer will have a healthier shell and can take more damage, but they will not be able to heal themselves by focusing SOUL.'
},
{
  name: 'Grubsong',
  notches: 1,
  description: 'Gain SOUL when taking damage.'
},
{
  name: "Grubberfly's Elegy",
  notches: 3,
  description: 'Imbues weapons with a holy strength. When the bearer is at full health, they will fire beams of white-hot energy from their nail.'
},
{
  name: 'Hiveblood',
  notches: 4,
  description: "Heals the bearer's wounds over time, allowing them to regain health without focusing SOUL."
},
{
  name: 'Spore Shroom',
  notches: 1,
  description: 'When focusing SOUL, emit a spore cloud that slowly damages enemies.'
},
{
  name: 'Sharp Shadow',
  notches: 2,
  description: "When using Shadow Dash, the bearer's body will sharpen and damage enemies."
},
{
  name: 'Shape of Unn',
  notches: 2,
  description: 'While focusing SOUL, the bearer will take on a new shape and can move freely to avoid enemies.'
},
{
  name: "Nailmaster's Glory",
  notches: 1,
  description: "Increases the bearer's mastery of Nail Arts, allowing them to focus their power faster and unleash arts sooner."
},
{
  name: 'Dream Wielder',
  notches: 1,
  description: 'Allows the bearer to charge the Dream Nail faster and collect more SOUL when striking foes.'
},
{
  name: 'Kingsoul',
  notches: 5,
  description: 'Holy charm symbolising a union between higher beings. The bearer will slowly absorb the limitless SOUL contained within. Opens the way to a birthplace.'
},
{
  name: 'Unbreakable Heart',
  notches: 2,
  description: 'Increases the health of the bearer. This charm is unbreakable.'
},
{
  name: 'Unbreakable Greed',
  notches: 2,
  description: 'Causes the bearer to find more Geo when defeating enemies. This charm is unbreakable.'
},
{
  name: 'Unbreakable Strength',
  notches: 3,
  description: 'Strengthens the bearer, increasing the damage they deal to enemies with their nail. This charm is unbreakable.'
},
{
  name: 'Dreamshield',
  notches: 3,
  description: 'Conjures a shield that follows the bearer and attempts to protect them.'
},
{
  name: 'Weaversong',
  notches: 2,
  description: 'Summons weaverlings to give the lonely bearer some companionship and protection.'
},
{
  name: 'Sprintmaster',
  notches: 1,
  description: 'Increases the running speed of the bearer, allowing them to avoid danger or overtake rivals.'
},
{
  name: 'Carefree Melody',
  notches: 3,
  description: 'Contains a song of protection that may defend the bearer from damage.'
},
{
  name: 'Grimmchild',
  notches: 2,
  description: "Worn by those who take part in the Grimm Troupe's Ritual. The bearer must seek the Grimmkin and collect their flames. Uncollected flames will appear on the bearer's map."
}]

charm_details.each do |detail|
  charm = Charm.create!(detail)
  file_name = detail[:name].include?(' ') ? "#{detail[:name].gsub(' ', '_')}.png" : "#{detail[:name]}.png"
  charm.sprite = Pathname.new(Rails.root.join("app/assets/images/charms/#{file_name}")).open
  charm.save!
end
