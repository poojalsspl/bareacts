<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bareact_mast".
 *
 * @property int|null $id
 * @property int $doc_id
 * @property string $bareact_code
 * @property string|null $bareact_desc
 * @property int|null $act_group_code
 * @property string|null $act_group_desc
 * @property int|null $act_catg_code
 * @property string|null $act_catg_desc
 * @property string|null $act_status
 * @property string|null $enact_date
 * @property string|null $ref_doc_id
 * @property int|null $act_sub_catg_code
 * @property string|null $act_sub_catg_desc
 * @property int|null $tot_section
 * @property int|null $tot_chap
 * @property int|null $country_code
 * @property string|null $country_name
 * @property string $crdt
 */
class BareactMast extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'bareact_mast';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'doc_id', 'act_group_code', 'act_catg_code', 'act_sub_catg_code', 'tot_section', 'tot_chap', 'country_code'], 'integer'],
            [['doc_id', 'bareact_code'], 'required'],
            [['enact_date', 'crdt'], 'safe'],
            [['bareact_code', 'ref_doc_id'], 'string', 'max' => 10],
            [['bareact_desc'], 'string', 'max' => 255],
            [['act_group_desc', 'act_status', 'country_name'], 'string', 'max' => 25],
            [['act_catg_desc', 'act_sub_catg_desc'], 'string', 'max' => 100],
            [['bareact_code'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'doc_id' => 'Doc ID',
            'bareact_code' => 'Bareact Code',
            'bareact_desc' => 'Bareact Desc',
            'act_group_code' => 'Act Group Code',
            'act_group_desc' => 'Act Group Desc',
            'act_catg_code' => 'Act Catg Code',
            'act_catg_desc' => 'Act Catg Desc',
            'act_status' => 'Act Status',
            'enact_date' => 'Enact Date',
            'ref_doc_id' => 'Ref Doc ID',
            'act_sub_catg_code' => 'Act Sub Catg Code',
            'act_sub_catg_desc' => 'Act Sub Catg Desc',
            'tot_section' => 'Tot Section',
            'tot_chap' => 'Tot Chap',
            'country_code' => 'Country Code',
            'country_name' => 'Country Name',
            'crdt' => 'Crdt',
        ];
    }
}
