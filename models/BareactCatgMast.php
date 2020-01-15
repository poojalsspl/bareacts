<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bareact_catg_mast".
 *
 * @property int|null $act_catg_code
 * @property string|null $act_catg_desc
 * @property string|null $short_desc
 * @property int|null $act_group_code
 * @property int|null $country_code
 * @property string|null $country_name
 * @property string $crdt
 */
class BareactCatgMast extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'bareact_catg_mast';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['act_catg_code', 'act_group_code', 'country_code'], 'integer'],
            [['crdt'], 'safe'],
            [['act_catg_desc'], 'string', 'max' => 100],
            [['short_desc'], 'string', 'max' => 10],
            [['country_name'], 'string', 'max' => 25],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'act_catg_code' => 'Act Catg Code',
            'act_catg_desc' => 'Act Catg Desc',
            'short_desc' => 'Short Desc',
            'act_group_code' => 'Act Group Code',
            'country_code' => 'Country Code',
            'country_name' => 'Country Name',
            'crdt' => 'Crdt',
        ];
    }

    public function getCatglist(){
     $query = (new \yii\db\Query())
        ->select('act_catg_code ,act_catg_desc')
        ->from('bareact_catg_mast')
        ->orderBy('act_catg_desc');
        $command = $query->createCommand();
         $rows = $command->queryAll();
       if($rows){
        return $rows;
    }       
    }
}
