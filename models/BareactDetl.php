<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bareact_detl".
 *
 * @property int $id
 * @property string $level
 * @property string|null $sno
 * @property int $doc_id
 * @property string|null $bareact_code
 * @property string|null $bareact_desc
 * @property int|null $act_group_code
 * @property string|null $act_group_desc
 * @property int|null $act_catg_code
 * @property string|null $act_catg_desc
 * @property int|null $act_sub_catg_code
 * @property string|null $act_sub_catg_desc
 * @property string $act_title
 * @property string|null $enact_date
 * @property string|null $act_status_mast
 * @property string|null $act_status_detl
 * @property string|null $pdoc_id
 * @property string|null $pdoc_txt
 * @property string|null $sdoc_id
 * @property string|null $sdoc_txt
 * @property string $cdoc_id
 * @property string $act_state
 * @property string|null $sec_id
 * @property int|null $chapt_no
 * @property string|null $chapt_title
 * @property string|null $sec_title
 * @property string|null $ref_doc_id
 * @property string $body
 * @property string|null $docid_ind
 * @property string $crdt
 */
class BareactDetl extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'bareact_detl';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'doc_id', 'act_group_code', 'act_catg_code', 'act_sub_catg_code', 'chapt_no'], 'integer'],
            [['level', 'doc_id', 'act_title', 'cdoc_id', 'act_state', 'body'], 'required'],
            [['enact_date', 'crdt'], 'safe'],
            [['body'], 'string'],
            [['level'], 'string', 'max' => 2],
            [['sno'], 'string', 'max' => 4],
            [['bareact_code', 'ref_doc_id'], 'string', 'max' => 10],
            [['bareact_desc', 'act_title', 'act_state', 'chapt_title', 'sec_title'], 'string', 'max' => 255],
            [['act_group_desc', 'act_status_mast'], 'string', 'max' => 25],
            [['act_catg_desc', 'act_sub_catg_desc', 'pdoc_txt', 'sdoc_txt', 'sec_id'], 'string', 'max' => 100],
            [['act_status_detl', 'docid_ind'], 'string', 'max' => 1],
            [['pdoc_id', 'sdoc_id', 'cdoc_id'], 'string', 'max' => 40],
            [['doc_id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'level' => 'Level',
            'sno' => 'Sno',
            'doc_id' => 'Doc ID',
            'bareact_code' => 'Bareact Code',
            'bareact_desc' => 'Bareact Desc',
            'act_group_code' => 'Act Group Code',
            'act_group_desc' => 'Act Group Desc',
            'act_catg_code' => 'Act Catg Code',
            'act_catg_desc' => 'Act Catg Desc',
            'act_sub_catg_code' => 'Act Sub Catg Code',
            'act_sub_catg_desc' => 'Act Sub Catg Desc',
            'act_title' => 'Act Title',
            'enact_date' => 'Enact Date',
            'act_status_mast' => 'Act Status Mast',
            'act_status_detl' => 'Act Status Detl',
            'pdoc_id' => 'Pdoc ID',
            'pdoc_txt' => 'Pdoc Txt',
            'sdoc_id' => 'Sdoc ID',
            'sdoc_txt' => 'Sdoc Txt',
            'cdoc_id' => 'Cdoc ID',
            'act_state' => 'Act State',
            'sec_id' => 'Sec ID',
            'chapt_no' => 'Chapt No',
            'chapt_title' => 'Chapt Title',
            'sec_title' => 'Sec Title',
            'ref_doc_id' => 'Ref Doc ID',
            'body' => 'Body',
            'docid_ind' => 'Docid Ind',
            'crdt' => 'Crdt',
        ];
    }

    public function getBareactBody($doc_code){
        $model = BareactDetl::find()
           ->select('body,bareact_code')
           ->where(['doc_id' => $doc_code])
           ->one();
          return $model;
    }
}
