.class Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureRecordTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# instance fields
.field public final mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "expecting object: "

    const/16 v5, 0x8

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-object v2

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSatPhysicalCameraId:Ljava/lang/String;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDidSwFlashFire:Z

    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mTotalCaptureTime:J

    sget-object v9, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    iput-boolean v9, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutterSound:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureCompletePending:Z

    new-instance v10, Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-direct {v10}, Lcom/motorola/camera/mcf/McfAuxiliaryData;-><init>()V

    iput-object v10, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v10, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iput-object v10, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    sget-object v10, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object v10, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->UNKNOWN:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iput-object v10, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v10, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iput-object v10, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPostViewRequested:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpegReqSent:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSavePostViewAsBackupImage:Z

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegMakerNote:[B

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegAppX:[B

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-wide v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureTimestamp:J

    iput v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    new-instance v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsSlowShot:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFull:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessInForeground:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->isWatermarkEnabled:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    const/4 v7, -0x1

    iput v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAIPersonalColorToneModuleType:I

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScan:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsStarTrail:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScanAutoCapture:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsMirror:Z

    iput-boolean v3, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mForceEvList:Z

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_81

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v13, 0x12

    const/16 v14, 0x11

    const/16 v16, 0xf

    const/16 v17, 0xe

    const/16 v18, 0xd

    const/16 v19, 0xc

    const/16 v20, 0xb

    const/16 v21, 0xa

    const/16 v22, 0x9

    const/16 v23, 0x7

    const/16 v24, 0x6

    const/16 v25, 0x5

    const/4 v7, 0x4

    const/16 v26, 0x3

    sparse-switch v10, :sswitch_data_0

    :goto_1
    const/4 v8, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string/jumbo v10, "use_exif_jpeg_as_backup"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    const/16 v8, 0x28

    goto/16 :goto_2

    :sswitch_1
    const-string v10, "media_file"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    const/16 v8, 0x27

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v10, "scn_mod"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    const/16 v8, 0x26

    goto/16 :goto_2

    :sswitch_3
    const-string v10, "auto_ai_personal_color_tone"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    const/16 v8, 0x25

    goto/16 :goto_2

    :sswitch_4
    const-string v10, "d_count"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    const/16 v8, 0x24

    goto/16 :goto_2

    :sswitch_5
    const-string v10, "is_bg_proc"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    const/16 v8, 0x23

    goto/16 :goto_2

    :sswitch_6
    const-string/jumbo v10, "rec_ext_info"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_1

    :cond_8
    const/16 v8, 0x22

    goto/16 :goto_2

    :sswitch_7
    const-string v10, "imaging_model_aux_data"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_1

    :cond_9
    const/16 v8, 0x21

    goto/16 :goto_2

    :sswitch_8
    const-string v10, "is_front_mirror_capture"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_1

    :cond_a
    const/16 v8, 0x20

    goto/16 :goto_2

    :sswitch_9
    const-string v10, "cam_fac_id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v8, 0x1f

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v10, "ultra_wide_front"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v8, 0x1e

    goto/16 :goto_2

    :sswitch_b
    const-string v10, "ext_bfr_done"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v8, 0x1d

    goto/16 :goto_2

    :sswitch_c
    const-string v10, "inst_typ"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v8, 0x1c

    goto/16 :goto_2

    :sswitch_d
    const-string v10, "cap_mod"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v8, 0x1b

    goto/16 :goto_2

    :sswitch_e
    const-string v10, "cam_typ"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v8, 0x1a

    goto/16 :goto_2

    :sswitch_f
    const-string v10, "auto_enhance"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v8, 0x19

    goto/16 :goto_2

    :sswitch_10
    const-string v10, "gps_loc"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v8, 0x18

    goto/16 :goto_2

    :sswitch_11
    const-string/jumbo v10, "reproc_typ"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v8, 0x17

    goto/16 :goto_2

    :sswitch_12
    const-string v10, "orien"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v8, 0x16

    goto/16 :goto_2

    :sswitch_13
    const-string/jumbo v10, "uuid"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v8, 0x15

    goto/16 :goto_2

    :sswitch_14
    const-string/jumbo v10, "segm"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v8, 0x14

    goto/16 :goto_2

    :sswitch_15
    const-string/jumbo v10, "raw"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v8, 0x13

    goto/16 :goto_2

    :sswitch_16
    const-string v10, "cap_time"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    goto/16 :goto_1

    :cond_18
    move v8, v13

    goto/16 :goto_2

    :sswitch_17
    const-string v10, "d_duration"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    goto/16 :goto_1

    :cond_19
    move v8, v14

    goto/16 :goto_2

    :sswitch_18
    const-string/jumbo v10, "setting_map"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v8, 0x10

    goto/16 :goto_2

    :sswitch_19
    const-string v10, "is_watermark_enabled"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    goto/16 :goto_1

    :cond_1b
    move/from16 v8, v16

    goto/16 :goto_2

    :sswitch_1a
    const-string/jumbo v10, "play_shutter"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    goto/16 :goto_1

    :cond_1c
    move/from16 v8, v17

    goto/16 :goto_2

    :sswitch_1b
    const-string v10, "anly_log"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    goto/16 :goto_1

    :cond_1d
    move/from16 v8, v18

    goto/16 :goto_2

    :sswitch_1c
    const-string/jumbo v10, "ses_id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    goto/16 :goto_1

    :cond_1e
    move/from16 v8, v19

    goto/16 :goto_2

    :sswitch_1d
    const-string/jumbo v10, "seq_id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    goto/16 :goto_1

    :cond_1f
    move/from16 v8, v20

    goto/16 :goto_2

    :sswitch_1e
    const-string v10, "auto_ai_personal_color_tone_module_type"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    goto/16 :goto_1

    :cond_20
    move/from16 v8, v21

    goto/16 :goto_2

    :sswitch_1f
    const-string v10, "meta_data"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    goto/16 :goto_1

    :cond_21
    move/from16 v8, v22

    goto/16 :goto_2

    :sswitch_20
    const-string/jumbo v10, "priority"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    goto/16 :goto_1

    :cond_22
    move v8, v5

    goto/16 :goto_2

    :sswitch_21
    const-string v10, "file_name"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    goto/16 :goto_1

    :cond_23
    move/from16 v8, v23

    goto :goto_2

    :sswitch_22
    const-string v10, "d_jobs"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    goto/16 :goto_1

    :cond_24
    move/from16 v8, v24

    goto :goto_2

    :sswitch_23
    const-string v10, "elaps_intr_str"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    goto/16 :goto_1

    :cond_25
    move/from16 v8, v25

    goto :goto_2

    :sswitch_24
    const-string v10, "cam_id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    goto/16 :goto_1

    :cond_26
    move v8, v7

    goto :goto_2

    :sswitch_25
    const-string v10, "ms_count"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    goto/16 :goto_1

    :cond_27
    move/from16 v8, v26

    goto :goto_2

    :sswitch_26
    const-string v10, "mcf_capture"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_28

    goto/16 :goto_1

    :cond_28
    move v8, v6

    goto :goto_2

    :sswitch_27
    const-string/jumbo v10, "shot_type"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_29

    goto/16 :goto_1

    :cond_29
    move v8, v9

    goto :goto_2

    :sswitch_28
    const-string/jumbo v10, "shot_bndl"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2a

    goto/16 :goto_1

    :cond_2a
    move v8, v3

    :goto_2
    const-string v10, "-"

    move/from16 v27, v9

    const-string v9, "GsonUtility$ImageCaptureRecordTypeAdapterFactory"

    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    packed-switch v8, :pswitch_data_0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$2(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown field name while parsing CaptureRecord "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    :goto_3
    move-object v8, v2

    move-object v15, v4

    goto/16 :goto_16

    :pswitch_1
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/google/gson/reflect/TypeToken;

    const-class v8, Lcom/motorola/camera/storage/MediaFile$Memento;

    invoke-direct {v7, v8}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v12, v0, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/storage/MediaFile$Memento;

    invoke-static {v7}, Lcom/motorola/camera/storage/MediaFile$Companion;->fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;

    move-result-object v7

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object v7

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownCount:I

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mRecordExtendedInfo:Z

    goto :goto_3

    :pswitch_7
    iget-object v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v8, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/google/gson/reflect/TypeToken;

    const-class v10, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    invoke-direct {v9, v10}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v12, v0, v9}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    invoke-virtual {v7, v8, v9}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->set(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsMirror:Z

    goto :goto_3

    :pswitch_9
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    goto :goto_3

    :pswitch_a
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mUltraWideFront:Z

    goto :goto_3

    :pswitch_b
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z

    goto :goto_3

    :pswitch_c
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$InstanceType;

    move-result-object v7

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/settings/CameraType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v7

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/google/gson/reflect/TypeToken;

    const-class v8, Landroid/location/Location;

    invoke-direct {v7, v8}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v12, v0, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v7

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    goto/16 :goto_3

    :pswitch_13
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    goto/16 :goto_3

    :pswitch_16
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    goto/16 :goto_3

    :pswitch_17
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownDuration:J

    goto/16 :goto_3

    :pswitch_18
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v8

    invoke-static {v8}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v8

    if-eq v8, v6, :cond_2c

    if-ne v8, v5, :cond_2b

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    sget-object v7, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto/16 :goto_7

    :cond_2b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_4
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_54

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :goto_5
    const/4 v9, -0x1

    goto/16 :goto_6

    :sswitch_29
    const-string/jumbo v10, "sm_front_mirror"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2d

    goto :goto_5

    :cond_2d
    const/16 v9, 0x26

    goto/16 :goto_6

    :sswitch_2a
    const-string/jumbo v10, "sm_video_portrait_level"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    goto :goto_5

    :cond_2e
    const/16 v9, 0x25

    goto/16 :goto_6

    :sswitch_2b
    const-string/jumbo v10, "sm_assistive_grid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    goto :goto_5

    :cond_2f
    const/16 v9, 0x24

    goto/16 :goto_6

    :sswitch_2c
    const-string/jumbo v10, "sm_dual_screen_preview"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_30

    goto :goto_5

    :cond_30
    const/16 v9, 0x23

    goto/16 :goto_6

    :sswitch_2d
    const-string/jumbo v10, "sm_focus_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    goto :goto_5

    :cond_31
    const/16 v9, 0x22

    goto/16 :goto_6

    :sswitch_2e
    const-string/jumbo v10, "sm_zoom_ui"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    goto :goto_5

    :cond_32
    const/16 v9, 0x21

    goto/16 :goto_6

    :sswitch_2f
    const-string/jumbo v10, "sm_face_beauty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_33

    goto :goto_5

    :cond_33
    const/16 v9, 0x20

    goto/16 :goto_6

    :sswitch_30
    const-string/jumbo v10, "sm_zoom_segment"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    goto :goto_5

    :cond_34
    const/16 v9, 0x1f

    goto/16 :goto_6

    :sswitch_31
    const-string/jumbo v10, "sm_face_beauty_level"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_35

    goto :goto_5

    :cond_35
    const/16 v9, 0x1e

    goto/16 :goto_6

    :sswitch_32
    const-string/jumbo v10, "sm_gesture_capture"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_36

    goto/16 :goto_5

    :cond_36
    const/16 v9, 0x1d

    goto/16 :goto_6

    :sswitch_33
    const-string/jumbo v10, "sm_face_beauty_smart_level"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_37

    goto/16 :goto_5

    :cond_37
    const/16 v9, 0x1c

    goto/16 :goto_6

    :sswitch_34
    const-string/jumbo v10, "sm_microphone_enabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_38

    goto/16 :goto_5

    :cond_38
    const/16 v9, 0x1b

    goto/16 :goto_6

    :sswitch_35
    const-string/jumbo v10, "sm_smart_composition"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_39

    goto/16 :goto_5

    :cond_39
    const/16 v9, 0x1a

    goto/16 :goto_6

    :sswitch_36
    const-string/jumbo v10, "sm_dc_cam_combo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    goto/16 :goto_5

    :cond_3a
    const/16 v9, 0x19

    goto/16 :goto_6

    :sswitch_37
    const-string/jumbo v10, "sm_capture_action"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3b

    goto/16 :goto_5

    :cond_3b
    const/16 v9, 0x18

    goto/16 :goto_6

    :sswitch_38
    const-string/jumbo v10, "sm_water_mark"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3c

    goto/16 :goto_5

    :cond_3c
    const/16 v9, 0x17

    goto/16 :goto_6

    :sswitch_39
    const-string/jumbo v10, "sm_geo_loc_enable"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    goto/16 :goto_5

    :cond_3d
    const/16 v9, 0x16

    goto/16 :goto_6

    :sswitch_3a
    const-string/jumbo v10, "sm_audio_zoom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3e

    goto/16 :goto_5

    :cond_3e
    const/16 v9, 0x15

    goto/16 :goto_6

    :sswitch_3b
    const-string/jumbo v10, "sm_dual_screen_animation"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3f

    goto/16 :goto_5

    :cond_3f
    const/16 v9, 0x14

    goto/16 :goto_6

    :sswitch_3c
    const-string/jumbo v10, "sm_storage"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_40

    goto/16 :goto_5

    :cond_40
    const/16 v9, 0x13

    goto/16 :goto_6

    :sswitch_3d
    const-string/jumbo v10, "sm_dc_layout"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    goto/16 :goto_5

    :cond_41
    move v9, v13

    goto/16 :goto_6

    :sswitch_3e
    const-string/jumbo v10, "sm_auto_night_vision_state"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_42

    goto/16 :goto_5

    :cond_42
    move v9, v14

    goto/16 :goto_6

    :sswitch_3f
    const-string/jumbo v10, "sm_ae_compensation"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    goto/16 :goto_5

    :cond_43
    const/16 v9, 0x10

    goto/16 :goto_6

    :sswitch_40
    const-string/jumbo v10, "sm_video_portrait_enabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_44

    goto/16 :goto_5

    :cond_44
    move/from16 v9, v16

    goto/16 :goto_6

    :sswitch_41
    const-string/jumbo v10, "sm_picture_size"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_45

    goto/16 :goto_5

    :cond_45
    move/from16 v9, v17

    goto/16 :goto_6

    :sswitch_42
    const-string/jumbo v10, "sm_timer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_46

    goto/16 :goto_5

    :cond_46
    move/from16 v9, v18

    goto/16 :goto_6

    :sswitch_43
    const-string/jumbo v10, "sm_flash"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_47

    goto/16 :goto_5

    :cond_47
    move/from16 v9, v19

    goto/16 :goto_6

    :sswitch_44
    const-string/jumbo v10, "sm_ssm_enabled"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    goto/16 :goto_5

    :cond_48
    move/from16 v9, v20

    goto/16 :goto_6

    :sswitch_45
    const-string/jumbo v10, "sm_dual_screen_review"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_49

    goto/16 :goto_5

    :cond_49
    move/from16 v9, v21

    goto/16 :goto_6

    :sswitch_46
    const-string/jumbo v10, "sm_hdr"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4a

    goto/16 :goto_5

    :cond_4a
    move/from16 v9, v22

    goto/16 :goto_6

    :sswitch_47
    const-string/jumbo v10, "sm_preview_size"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4b

    goto/16 :goto_5

    :cond_4b
    move v9, v5

    goto/16 :goto_6

    :sswitch_48
    const-string/jumbo v10, "sm_auto_focus_tracking"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4c

    goto/16 :goto_5

    :cond_4c
    move/from16 v9, v23

    goto :goto_6

    :sswitch_49
    const-string/jumbo v10, "sm_auto_smile_capture"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4d

    goto/16 :goto_5

    :cond_4d
    move/from16 v9, v24

    goto :goto_6

    :sswitch_4a
    const-string/jumbo v10, "sm_pro_leveler"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4e

    goto/16 :goto_5

    :cond_4e
    move/from16 v9, v25

    goto :goto_6

    :sswitch_4b
    const-string/jumbo v10, "sm_face_beauty_version"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4f

    goto/16 :goto_5

    :cond_4f
    move v9, v7

    goto :goto_6

    :sswitch_4c
    const-string/jumbo v10, "sm_shutter_tone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_50

    goto/16 :goto_5

    :cond_50
    move/from16 v9, v26

    goto :goto_6

    :sswitch_4d
    const-string/jumbo v10, "sm_zoom"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_51

    goto/16 :goto_5

    :cond_51
    move v9, v6

    goto :goto_6

    :sswitch_4e
    const-string/jumbo v10, "sm_mode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_52

    goto/16 :goto_5

    :cond_52
    move/from16 v9, v27

    goto :goto_6

    :sswitch_4f
    const-string/jumbo v10, "sm_dtfe"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_53

    goto/16 :goto_5

    :cond_53
    move v9, v3

    :goto_6
    packed-switch v9, :pswitch_data_1

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$2(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown field name while parsing SettingsMap:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_19
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_1a
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_1b
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_1c
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_1d
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_1e
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_UI_ANALYTICS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_1f
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_20
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_21
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_22
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_23
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_24
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_25
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_26
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_27
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_28
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_29
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_2a
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_2b
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_2c
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_2d
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_2e
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_2f
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_30
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_31
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_32
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_33
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_34
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_35
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_36
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_37
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_38
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_39
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_3a
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_3b
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_3c
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_3d
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_3e
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_3f
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_54
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    move-object v7, v8

    :goto_7
    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    goto/16 :goto_3

    :pswitch_40
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->isWatermarkEnabled:Z

    goto/16 :goto_3

    :pswitch_41
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    goto/16 :goto_3

    :pswitch_42
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    iput-boolean v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    goto/16 :goto_3

    :pswitch_43
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    goto/16 :goto_3

    :pswitch_44
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/google/gson/reflect/TypeToken;

    const-class v8, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-direct {v7, v8}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v12, v0, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    goto/16 :goto_3

    :pswitch_45
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    iput v7, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAIPersonalColorToneModuleType:I

    goto/16 :goto_3

    :pswitch_46
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v8

    invoke-static {v8}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v8

    if-eq v8, v6, :cond_56

    if-ne v8, v5, :cond_55

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto/16 :goto_c

    :cond_55
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_8
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6a

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_2

    :goto_9
    const/4 v12, -0x1

    goto/16 :goto_a

    :sswitch_50
    const-string v13, "md_motion_photos_allowed"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_57

    goto :goto_9

    :cond_57
    const/16 v12, 0x10

    goto/16 :goto_a

    :sswitch_51
    const-string v13, "md_auto_enhance_state"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_58

    goto :goto_9

    :cond_58
    move/from16 v12, v16

    goto/16 :goto_a

    :sswitch_52
    const-string v13, "md_touch_location"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_59

    goto :goto_9

    :cond_59
    move/from16 v12, v17

    goto/16 :goto_a

    :sswitch_53
    const-string v13, "md_analytics_seq_id"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5a

    goto :goto_9

    :cond_5a
    move/from16 v12, v18

    goto/16 :goto_a

    :sswitch_54
    const-string v13, "md_focus_success"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5b

    goto :goto_9

    :cond_5b
    move/from16 v12, v19

    goto/16 :goto_a

    :sswitch_55
    const-string v13, "md_analytics_active_photo_viddur"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5c

    goto :goto_9

    :cond_5c
    move/from16 v12, v20

    goto/16 :goto_a

    :sswitch_56
    const-string v13, "md_analytics_is_caf"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5d

    goto :goto_9

    :cond_5d
    move/from16 v12, v21

    goto/16 :goto_a

    :sswitch_57
    const-string v13, "md_focus_areas_supported"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5e

    goto :goto_9

    :cond_5e
    move/from16 v12, v22

    goto/16 :goto_a

    :sswitch_58
    const-string v13, "md_analytics_active_photo_saved"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5f

    goto :goto_9

    :cond_5f
    move v12, v5

    goto/16 :goto_a

    :sswitch_59
    const-string v13, "md_analytic_lens_foc_dist"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_60

    goto :goto_9

    :cond_60
    move/from16 v12, v23

    goto :goto_a

    :sswitch_5a
    const-string v13, "md_analytic_photo_solid_time"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_61

    goto/16 :goto_9

    :cond_61
    move/from16 v12, v24

    goto :goto_a

    :sswitch_5b
    const-string v13, "md_caf_supported"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_62

    goto/16 :goto_9

    :cond_62
    move/from16 v12, v25

    goto :goto_a

    :sswitch_5c
    const-string v13, "md_shutter_cb_time"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_63

    goto/16 :goto_9

    :cond_63
    move v12, v7

    goto :goto_a

    :sswitch_5d
    const-string v13, "md_faces_detected"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_64

    goto/16 :goto_9

    :cond_64
    move/from16 v12, v26

    goto :goto_a

    :sswitch_5e
    const-string v13, "md_roi_touch_rect"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_65

    goto/16 :goto_9

    :cond_65
    move v12, v6

    goto :goto_a

    :sswitch_5f
    const-string v13, "md_analytic_sw_fl_fir_auto"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_66

    goto/16 :goto_9

    :cond_66
    move/from16 v12, v27

    goto :goto_a

    :sswitch_60
    const-string v13, "md_timer_checkin"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_67

    goto/16 :goto_9

    :cond_67
    move v12, v3

    :goto_a
    packed-switch v12, :pswitch_data_2

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$2(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown field name while parsing MetaDataBundle: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_47
    const-string v12, "ACTIVE_PHOTO_ALLOWED"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_b

    :pswitch_48
    const-string v12, "ANALYTICS_AUTO_ENHANCE_STATE"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_b

    :pswitch_49
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    if-ge v13, v6, :cond_68

    goto/16 :goto_b

    :cond_68
    :try_start_0
    new-instance v13, Landroid/graphics/PointF;

    aget-object v14, v12, v3

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    aget-object v28, v12, v27

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v14, "TOUCH_LOCATION"

    invoke-virtual {v8, v14, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_b

    :catch_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unable to parse CR_TOUCH_LOCATION with input: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :pswitch_4a
    const-string v12, "ANALYTICS_SEQID"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v13

    invoke-virtual {v8, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_b

    :pswitch_4b
    const-string v12, "FOCUS_SUCCESS"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_b

    :pswitch_4c
    const-string v12, "ANALYTICS_ACTIVE_PHOTO_VIDDUR"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v13

    invoke-virtual {v8, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_b

    :pswitch_4d
    const-string v12, "ANALYTICS_IS_CAF"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_b

    :pswitch_4e
    const-string v12, "FOCUS_AREAS_SUPPORTED"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_b

    :pswitch_4f
    const-string v12, "ANALYTICS_ACTIVE_PHOTO_SAVED"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_b

    :pswitch_50
    const-string v12, "ANALYTICS_LENS_FOCUS_DISTANCE"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v13

    invoke-virtual {v8, v12, v13, v14}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_b

    :pswitch_51
    const-string v12, "ANALYTICS_PHOTO_SOLID_TIME"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v13

    invoke-virtual {v8, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_b

    :pswitch_52
    const-string v12, "CAF_SUPPORTED"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b

    :pswitch_53
    const-string v12, "SHUTTER_CB_TIME"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v13

    invoke-virtual {v8, v12, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_b

    :pswitch_54
    const-string v12, "FACES_DETECTED"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b

    :pswitch_55
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    if-ge v13, v7, :cond_69

    goto :goto_b

    :cond_69
    :try_start_1
    new-instance v13, Landroid/graphics/Rect;

    aget-object v14, v12, v3

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aget-object v15, v12, v27

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aget-object v28, v12, v6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v28, v12, v26

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v13, v14, v15, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v2, "ROI_TOUCH_RECT"

    invoke-virtual {v8, v2, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Unable to parse CR_ROI_TOUCH_RECT with input: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :pswitch_56
    const-string v2, "ANALYTICS_SWFLASHFIREDONAUTO"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v7

    invoke-virtual {v8, v2, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b

    :pswitch_57
    const-string v2, "TIMER_CHECKIN"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    invoke-virtual {v8, v2, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_b
    const/4 v2, 0x0

    const/4 v7, 0x4

    goto/16 :goto_8

    :cond_6a
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    move-object v7, v8

    :goto_c
    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    :goto_d
    move-object v15, v4

    const/4 v8, 0x0

    goto/16 :goto_16

    :pswitch_58
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    goto :goto_d

    :pswitch_59
    new-instance v2, Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/google/gson/reflect/TypeToken;

    const-class v8, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v7, v8}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v12, v0, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/camera/saving/FileName;

    invoke-direct {v2, v7}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/saving/FileName;)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    goto :goto_d

    :pswitch_5a
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownJobs:I

    goto :goto_d

    :pswitch_5b
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    goto :goto_d

    :pswitch_5c
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    goto :goto_d

    :pswitch_5d
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v2

    iput v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    goto :goto_d

    :pswitch_5e
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v2

    iput-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    goto :goto_d

    :pswitch_5f
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/ShotType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/ShotType;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    goto :goto_d

    :pswitch_60
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v2

    invoke-static {v2}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    if-eq v2, v6, :cond_6c

    if-ne v2, v5, :cond_6b

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object v15, v4

    const/4 v8, 0x0

    goto/16 :goto_15

    :cond_6b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6c
    const-string v2, "LOCATION"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_e
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_3

    :goto_f
    const/4 v8, -0x1

    goto/16 :goto_10

    :sswitch_61
    const-string/jumbo v12, "sb_uuid"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6d

    goto :goto_f

    :cond_6d
    move v8, v14

    goto/16 :goto_10

    :sswitch_62
    const-string/jumbo v12, "sb_document_width"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6e

    goto :goto_f

    :cond_6e
    const/16 v8, 0x10

    goto/16 :goto_10

    :sswitch_63
    const-string/jumbo v12, "sb_alt_sht_idx"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6f

    goto :goto_f

    :cond_6f
    move/from16 v8, v16

    goto/16 :goto_10

    :sswitch_64
    const-string/jumbo v12, "sb_rev_req"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_70

    goto :goto_f

    :cond_70
    move/from16 v8, v17

    goto/16 :goto_10

    :sswitch_65
    const-string/jumbo v12, "sb_cap_typ"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_71

    goto :goto_f

    :cond_71
    move/from16 v8, v18

    goto/16 :goto_10

    :sswitch_66
    const-string/jumbo v12, "sb_cap_trg"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_72

    goto :goto_f

    :cond_72
    move/from16 v8, v19

    goto/16 :goto_10

    :sswitch_67
    const-string/jumbo v12, "sb_cap_timestmp"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_73

    goto :goto_f

    :cond_73
    move/from16 v8, v20

    goto/16 :goto_10

    :sswitch_68
    const-string/jumbo v12, "sb_multi_shot_ct"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_74

    goto :goto_f

    :cond_74
    move/from16 v8, v21

    goto/16 :goto_10

    :sswitch_69
    const-string/jumbo v12, "sb_alt_shot"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_75

    goto :goto_f

    :cond_75
    move/from16 v8, v22

    goto/16 :goto_10

    :sswitch_6a
    const-string/jumbo v12, "sb_key_cod"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_76

    goto/16 :goto_f

    :cond_76
    move v8, v5

    goto/16 :goto_10

    :sswitch_6b
    const-string/jumbo v12, "sb_rev_accept"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_77

    goto/16 :goto_f

    :cond_77
    move/from16 v8, v23

    goto :goto_10

    :sswitch_6c
    const-string/jumbo v12, "sb_cap_auto_cap_typ"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_78

    goto/16 :goto_f

    :cond_78
    move/from16 v8, v24

    goto :goto_10

    :sswitch_6d
    const-string/jumbo v12, "sb_loc"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_79

    goto/16 :goto_f

    :cond_79
    move/from16 v8, v25

    goto :goto_10

    :sswitch_6e
    const-string/jumbo v12, "sb_on_down"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7a

    goto/16 :goto_f

    :cond_7a
    const/4 v8, 0x4

    goto :goto_10

    :sswitch_6f
    const-string/jumbo v12, "sb_document_points"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7b

    goto/16 :goto_f

    :cond_7b
    move/from16 v8, v26

    goto :goto_10

    :sswitch_70
    const-string/jumbo v12, "sb_document_height"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7c

    goto/16 :goto_f

    :cond_7c
    move v8, v6

    goto :goto_10

    :sswitch_71
    const-string/jumbo v12, "sb_timer"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7d

    goto/16 :goto_f

    :cond_7d
    move/from16 v8, v27

    goto :goto_10

    :sswitch_72
    const-string/jumbo v12, "sb_on_up"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7e

    goto/16 :goto_f

    :cond_7e
    move v8, v3

    :goto_10
    packed-switch v8, :pswitch_data_3

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->stringValueOf$2(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown field name while parsing ShotBundle: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_61
    const-string v8, "UUID"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    move-object v15, v4

    const/4 v8, 0x0

    goto/16 :goto_14

    :pswitch_62
    const-string v8, "DOCUMENT_WIDTH"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v12

    invoke-virtual {v7, v8, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11

    :pswitch_63
    const-string v8, "alternate_shot_index_"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v12

    invoke-virtual {v7, v8, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11

    :pswitch_64
    const-string v8, "REVIEW_REQUIRED"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v12

    invoke-virtual {v7, v8, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_11

    :pswitch_65
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    move-result-object v8

    const-string v12, "CAPTURE_TYPE"

    invoke-virtual {v7, v12, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_11

    :pswitch_66
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    move-result-object v8

    const-string v12, "CAPTURE_TRIGGER"

    invoke-virtual {v7, v12, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_11

    :pswitch_67
    const-string v8, "CAPTURE_TIMESTAMP"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v12

    invoke-virtual {v7, v8, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_11

    :pswitch_68
    const-string v8, "MULTI_SHOT_COUNT"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v12

    invoke-virtual {v7, v8, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11

    :pswitch_69
    const-string v8, "ALTERNATE_SHOT"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v12

    invoke-virtual {v7, v8, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_11

    :pswitch_6a
    const-string v8, "KEY_CODE"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v12

    invoke-virtual {v7, v8, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11

    :pswitch_6b
    const-string v8, "REVIEW_ACCEPT"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v12

    invoke-virtual {v7, v8, v12}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_11

    :pswitch_6c
    const-string v8, "CAPTURE_AUTO_CAPTURE_TYPE"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v12

    invoke-virtual {v7, v8, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_11

    :pswitch_6d
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :try_start_2
    new-instance v12, Landroid/graphics/PointF;

    aget-object v13, v8, v3

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aget-object v15, v8, v27

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-direct {v12, v13, v15}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v7, v2, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    const/4 v8, 0x0

    goto :goto_12

    :catch_2
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to parse SB_LOCATION with input: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v8, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v8, v27

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_11

    :goto_12
    invoke-virtual {v7, v2, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    throw v0

    :pswitch_6e
    const/4 v8, 0x0

    const-string v12, "ON_DOWN"

    move-object v15, v4

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v3

    invoke-virtual {v7, v12, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_14

    :pswitch_6f
    move-object v15, v4

    const/4 v8, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    :goto_13
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_7f
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endArray()V

    const-string v4, "DOCUMENT_POINTS"

    invoke-virtual {v7, v4, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_14

    :pswitch_70
    move-object v15, v4

    const/4 v8, 0x0

    const-string v3, "DOCUMENT_HEIGHT"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_14

    :pswitch_71
    move-object v15, v4

    const/4 v8, 0x0

    const-string v3, "TIMER"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_14

    :pswitch_72
    move-object v15, v4

    const/4 v8, 0x0

    const-string v3, "ON_UP"

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v5

    invoke-virtual {v7, v3, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_14
    move-object v4, v15

    const/4 v3, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x2

    goto/16 :goto_e

    :cond_80
    move-object v15, v4

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    move-object v2, v7

    :goto_15
    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    :goto_16
    move-object v2, v8

    move-object v4, v15

    move/from16 v9, v27

    const/4 v3, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, -0x1

    goto/16 :goto_0

    :cond_81
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x76992007 -> :sswitch_28
        -0x7690c6a1 -> :sswitch_27
        -0x61757c69 -> :sswitch_26
        -0x59ef92ca -> :sswitch_25
        -0x51865475 -> :sswitch_24
        -0x50c96bc9 -> :sswitch_23
        -0x4feeccaf -> :sswitch_22
        -0x4e77b492 -> :sswitch_21
        -0x4577865c -> :sswitch_20
        -0x3fc3725c -> :sswitch_1f
        -0x3f19036c -> :sswitch_1e
        -0x35fe9b05 -> :sswitch_1d
        -0x35fdb247 -> :sswitch_1c
        -0x299f3801 -> :sswitch_1b
        -0x25846a1e -> :sswitch_1a
        -0x838496f -> :sswitch_19
        -0x743c513 -> :sswitch_18
        -0x4a650f1 -> :sswitch_17
        -0x41f60e6 -> :sswitch_16
        0x1b828 -> :sswitch_15
        0x35ceb8 -> :sswitch_14
        0x36f3bb -> :sswitch_13
        0x6519a0f -> :sswitch_12
        0xbc82555 -> :sswitch_11
        0xe41fe2b -> :sswitch_10
        0x1eca281e -> :sswitch_f
        0x20bbf21b -> :sswitch_e
        0x20e61d15 -> :sswitch_d
        0x2115c512 -> :sswitch_c
        0x2ad798d1 -> :sswitch_b
        0x3330c030 -> :sswitch_a
        0x36389022 -> :sswitch_9
        0x363ccf91 -> :sswitch_8
        0x36c27462 -> :sswitch_7
        0x3c42dadb -> :sswitch_6
        0x4ec21cfb -> :sswitch_5
        0x51b2d974 -> :sswitch_4
        0x5381e226 -> :sswitch_3
        0x72975361 -> :sswitch_2
        0x73998cf7 -> :sswitch_1
        0x78bfdfaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d2937ec -> :sswitch_4f
        -0x7d253398 -> :sswitch_4e
        -0x7d1f4968 -> :sswitch_4d
        -0x7540cbb7 -> :sswitch_4c
        -0x5b580b2e -> :sswitch_4b
        -0x598116c6 -> :sswitch_4a
        -0x55ecff7c -> :sswitch_49
        -0x4a5a8a97 -> :sswitch_48
        -0x459a3023 -> :sswitch_47
        -0x3595ec6f -> :sswitch_46
        -0x338485f3 -> :sswitch_45
        -0x332bb756 -> :sswitch_44
        -0x27e54a35 -> :sswitch_43
        -0x272132e0 -> :sswitch_42
        -0x23385799 -> :sswitch_41
        -0x1f851e9a -> :sswitch_40
        -0xf1e7350 -> :sswitch_3f
        -0xc58a414 -> :sswitch_3e
        -0x876f0bb -> :sswitch_3d
        -0x59f026a -> :sswitch_3c
        -0x5965f51 -> :sswitch_3b
        0x8b9e1a1 -> :sswitch_3a
        0x96ab195 -> :sswitch_39
        0x21433bfa -> :sswitch_38
        0x221ab9d4 -> :sswitch_37
        0x29496f23 -> :sswitch_36
        0x35fd6d8f -> :sswitch_35
        0x3cbfd731 -> :sswitch_34
        0x40f8a488 -> :sswitch_33
        0x41d9e26b -> :sswitch_32
        0x4abe29fe -> :sswitch_31
        0x54a0e48c -> :sswitch_30
        0x63007a39 -> :sswitch_2f
        0x6422159b -> :sswitch_2e
        0x6e458faf -> :sswitch_2d
        0x6e6cb7b3 -> :sswitch_2c
        0x7b961c3b -> :sswitch_2b
        0x7d4636e9 -> :sswitch_2a
        0x7ef3f85a -> :sswitch_29
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4903cb75 -> :sswitch_60
        -0x3f5780d9 -> :sswitch_5f
        -0x2928b921 -> :sswitch_5e
        -0x1b76016d -> :sswitch_5d
        0x14fd79b3 -> :sswitch_5c
        0x164c004f -> :sswitch_5b
        0x17057ad8 -> :sswitch_5a
        0x1eff71a2 -> :sswitch_59
        0x230ec182 -> :sswitch_58
        0x267f4f26 -> :sswitch_57
        0x3ae1ebb4 -> :sswitch_56
        0x445084b5 -> :sswitch_55
        0x465eaef4 -> :sswitch_54
        0x4b35397c -> :sswitch_53
        0x5e36485d -> :sswitch_52
        0x5ec0ccd8 -> :sswitch_51
        0x707f9eeb -> :sswitch_50
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x6d4a20f5 -> :sswitch_72
        -0x6d05beab -> :sswitch_71
        -0x6c20c125 -> :sswitch_70
        -0x5decf569 -> :sswitch_6f
        -0x434d66ee -> :sswitch_6e
        -0x3630deb0 -> :sswitch_6d
        -0x3321d6b5 -> :sswitch_6c
        -0x322de3ec -> :sswitch_6b
        -0x24d60258 -> :sswitch_6a
        -0x1aeb7840 -> :sswitch_69
        -0x897a720 -> :sswitch_68
        0x2534ddce -> :sswitch_67
        0x2ca62dcc -> :sswitch_66
        0x2ca62eae -> :sswitch_65
        0x4d4b8d12 -> :sswitch_64
        0x505fe0b7 -> :sswitch_63
        0x6070f992 -> :sswitch_62
        0x701937ab -> :sswitch_61
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
    .end packed-switch
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    const-string/jumbo v2, "play_shutter"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "mcf_capture"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfCapture:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-eqz v2, :cond_1

    const-string v2, "inst_typ"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "reproc_typ"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "scn_mod"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v2, "priority"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string/jumbo v2, "raw"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string/jumbo v2, "ultra_wide_front"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mUltraWideFront:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string/jumbo v2, "segm"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "is_bg_proc"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "is_watermark_enabled"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->isWatermarkEnabled:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "ms_count"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/motorola/camera/utility/GsonUtility$ImageCaptureRecordTypeAdapterFactory$CaptureRecordTypeAdapter;->mGson:Lcom/google/gson/Gson;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "seq_id"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v2, "ses_id"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "cap_time"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-wide v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureTime:J

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    if-eqz v2, :cond_5

    const-string v2, "file_name"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mFileName:Lcom/motorola/camera/saving/FileName;

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    if-eqz v2, :cond_6

    const-string v2, "media_file"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMediaFile:Lcom/motorola/camera/storage/MediaFile;

    invoke-interface {v2}, Lcom/motorola/camera/storage/MediaFile;->toMemento()Lcom/motorola/camera/storage/MediaFile$Memento;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_6
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    if-eqz v2, :cond_7

    const-string v2, "gps_loc"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mGpsLocation:Landroid/location/Location;

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_7
    const-string v2, "orien"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-eqz v2, :cond_8

    const-string/jumbo v2, "shot_type"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    :cond_8
    const-string v2, "cap_mod"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string/jumbo v2, "rec_ext_info"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mRecordExtendedInfo:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "elaps_intr_str"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-wide v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "cam_typ"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "cam_id"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string v2, "cam_fac_id"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraFacingId:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "anly_log"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mAnalyticsLog:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "ext_bfr_done"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mExitBeforeDone:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string/jumbo v2, "uuid"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-wide v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mUUID:J

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "auto_enhance"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "auto_ai_personal_color_tone"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "auto_ai_personal_color_tone_module_type"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAIPersonalColorToneModuleType:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "d_count"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownCount:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "d_duration"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-wide v4, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownDuration:J

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    const-string v2, "d_jobs"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDownJobs:I

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v15, "-"

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "shot_bndl"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    goto/16 :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v17

    const-string v5, "DOCUMENT_WIDTH"

    const-string v6, "CAPTURE_TRIGGER"

    const-string v7, "TIMER"

    const-string v8, "ON_UP"

    const-string v9, "UUID"

    const-string v10, "ON_DOWN"

    const-string v11, "CAPTURE_TYPE"

    const-string v12, "CAPTURE_TIMESTAMP"

    const-string v13, "LOCATION"

    const-string v14, "DOCUMENT_POINTS"

    move-object/from16 v18, v3

    const-string v3, "DOCUMENT_HEIGHT"

    sparse-switch v17, :sswitch_data_0

    move-object/from16 v17, v1

    :goto_1
    const/4 v1, -0x1

    goto/16 :goto_3

    :sswitch_0
    move-object/from16 v17, v1

    const-string v1, "REVIEW_ACCEPT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v1, 0x11

    goto/16 :goto_3

    :sswitch_1
    move-object/from16 v17, v1

    const-string v1, "CAPTURE_AUTO_CAPTURE_TYPE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v1, 0x10

    goto/16 :goto_3

    :sswitch_2
    move-object/from16 v17, v1

    const-string v1, "ALTERNATE_SHOT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v1, 0xf

    goto/16 :goto_3

    :sswitch_3
    move-object/from16 v17, v1

    const-string v1, "MULTI_SHOT_COUNT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v1, 0xe

    goto/16 :goto_3

    :sswitch_4
    move-object/from16 v17, v1

    const-string v1, "KEY_CODE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_2

    :cond_e
    const/16 v1, 0xd

    goto/16 :goto_3

    :sswitch_5
    move-object/from16 v17, v1

    const-string v1, "alternate_shot_index_"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_6
    move-object/from16 v17, v1

    const-string v1, "REVIEW_REQUIRED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_7
    move-object/from16 v17, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_8
    move-object/from16 v17, v1

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_9
    move-object/from16 v17, v1

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_2

    :cond_13
    const/16 v1, 0x8

    goto/16 :goto_3

    :sswitch_a
    move-object/from16 v17, v1

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_2

    :cond_14
    const/4 v1, 0x7

    goto :goto_3

    :sswitch_b
    move-object/from16 v17, v1

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2

    :cond_15
    const/4 v1, 0x6

    goto :goto_3

    :sswitch_c
    move-object/from16 v17, v1

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_2

    :cond_16
    const/4 v1, 0x5

    goto :goto_3

    :sswitch_d
    move-object/from16 v17, v1

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_2

    :cond_17
    const/4 v1, 0x4

    goto :goto_3

    :sswitch_e
    move-object/from16 v17, v1

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_2

    :cond_18
    const/4 v1, 0x3

    goto :goto_3

    :sswitch_f
    move-object/from16 v17, v1

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_2

    :cond_19
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_10
    move-object/from16 v17, v1

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_2

    :cond_1a
    const/4 v1, 0x1

    goto :goto_3

    :sswitch_11
    move-object/from16 v17, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    :goto_2
    goto/16 :goto_1

    :cond_1b
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const-string/jumbo v1, "sb_rev_accept"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v1, "REVIEW_ACCEPT"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_5

    :pswitch_1
    const-string/jumbo v1, "sb_cap_auto_cap_typ"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v1, "CAPTURE_AUTO_CAPTURE_TYPE"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_5

    :pswitch_2
    const-string/jumbo v1, "sb_alt_shot"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v1, "ALTERNATE_SHOT"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_5

    :pswitch_3
    const-string/jumbo v1, "sb_multi_shot_ct"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v1, "MULTI_SHOT_COUNT"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_5

    :pswitch_4
    const-string/jumbo v1, "sb_key_cod"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v1, "KEY_CODE"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_5

    :pswitch_5
    const-string/jumbo v1, "sb_alt_sht_idx"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v1, "alternate_shot_index_"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_5

    :pswitch_6
    const-string/jumbo v1, "sb_rev_req"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v1, "REVIEW_REQUIRED"

    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_5

    :pswitch_7
    const-string/jumbo v1, "sb_document_width"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_5

    :pswitch_8
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-eqz v1, :cond_1d

    const-string/jumbo v3, "sb_cap_trg"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_9
    const-string/jumbo v1, "sb_timer"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_5

    :pswitch_a
    const-string/jumbo v1, "sb_on_up"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_5

    :pswitch_b
    const-string/jumbo v1, "sb_uuid"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_c
    const-string/jumbo v1, "sb_on_down"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v2, v10}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_5

    :pswitch_d
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$CaptureType;

    if-eqz v1, :cond_1d

    const-string/jumbo v3, "sb_cap_typ"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_e
    const-string/jumbo v1, "sb_cap_timestmp"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v2, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto :goto_5

    :pswitch_f
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    if-eqz v1, :cond_1d

    const-string/jumbo v3, "sb_loc"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_10
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string/jumbo v3, "sb_document_points"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginArray()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto :goto_4

    :cond_1c
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endArray()V

    goto :goto_5

    :pswitch_11
    const-string/jumbo v1, "sb_document_height"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    :cond_1d
    :goto_5
    move-object/from16 v1, v17

    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    :goto_6
    move-object/from16 v1, v17

    goto :goto_7

    :cond_1f
    move-object/from16 v18, v3

    :goto_7
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    if-eqz v2, :cond_22

    const-string/jumbo v2, "setting_map"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    if-eqz v2, :cond_21

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    goto/16 :goto_8

    :cond_20
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    const-string/jumbo v3, "sm_geo_loc_enable"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_storage"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_shutter_tone"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_preview_size"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_mode"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_ssm_enabled"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SUPER_SLOW_MOTION_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_face_beauty"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_face_beauty_level"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_gesture_capture"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_auto_smile_capture"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_water_mark"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_dual_screen_review"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_dual_screen_animation"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_dual_screen_preview"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_timer"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_flash"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_focus_mode"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_capture_action"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_picture_size"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_ae_compensation"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_dtfe"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_zoom"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_zoom_segment"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_smart_composition"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->SMART_COMPOSITION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_hdr"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->HDR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_dc_layout"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_dc_cam_combo"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_assistive_grid"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_pro_leveler"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_front_mirror"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_microphone_enabled"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_audio_zoom"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUDIO_ZOOM_ENABLED:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_auto_focus_tracking"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_FOCUS_TRACKING:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_video_portrait_enabled"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_video_portrait_level"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_PORTRAIT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_face_beauty_smart_level"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_auto_night_vision_state"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_face_beauty_version"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    const-string/jumbo v3, "sm_zoom_ui"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_UI_ANALYTICS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v3, v3, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    goto :goto_9

    :cond_21
    :goto_8
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    :cond_22
    :goto_9
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    if-eqz v2, :cond_37

    const-string v2, "meta_data"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    if-nez v2, :cond_23

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_d

    :cond_23
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginObject()V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    :goto_b
    const/4 v4, -0x1

    goto/16 :goto_c

    :sswitch_12
    const-string v5, "TIMER_CHECKIN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_b

    :cond_25
    const/16 v4, 0x10

    goto/16 :goto_c

    :sswitch_13
    const-string v5, "SHUTTER_CB_TIME"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_b

    :cond_26
    const/16 v4, 0xf

    goto/16 :goto_c

    :sswitch_14
    const-string v5, "ANALYTICS_AUTO_ENHANCE_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_b

    :cond_27
    const/16 v4, 0xe

    goto/16 :goto_c

    :sswitch_15
    const-string v5, "ANALYTICS_LENS_FOCUS_DISTANCE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_b

    :cond_28
    const/16 v4, 0xd

    goto/16 :goto_c

    :sswitch_16
    const-string v5, "CAF_SUPPORTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_b

    :cond_29
    const/16 v4, 0xc

    goto/16 :goto_c

    :sswitch_17
    const-string v5, "ANALYTICS_SWFLASHFIREDONAUTO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_b

    :cond_2a
    const/16 v4, 0xb

    goto/16 :goto_c

    :sswitch_18
    const-string v5, "ROI_TOUCH_RECT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_b

    :cond_2b
    const/16 v4, 0xa

    goto/16 :goto_c

    :sswitch_19
    const-string v5, "FACES_DETECTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto :goto_b

    :cond_2c
    const/16 v4, 0x9

    goto/16 :goto_c

    :sswitch_1a
    const-string v5, "ANALYTICS_ACTIVE_PHOTO_SAVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_b

    :cond_2d
    const/16 v4, 0x8

    goto/16 :goto_c

    :sswitch_1b
    const-string v5, "FOCUS_SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto/16 :goto_b

    :cond_2e
    const/4 v4, 0x7

    goto :goto_c

    :sswitch_1c
    const-string v5, "ACTIVE_PHOTO_ALLOWED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    goto/16 :goto_b

    :cond_2f
    const/4 v4, 0x6

    goto :goto_c

    :sswitch_1d
    const-string v5, "ANALYTICS_PHOTO_SOLID_TIME"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    goto/16 :goto_b

    :cond_30
    const/4 v4, 0x5

    goto :goto_c

    :sswitch_1e
    const-string v5, "FOCUS_AREAS_SUPPORTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    goto/16 :goto_b

    :cond_31
    const/4 v4, 0x4

    goto :goto_c

    :sswitch_1f
    const-string v5, "ANALYTICS_SEQID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    goto/16 :goto_b

    :cond_32
    const/4 v4, 0x3

    goto :goto_c

    :sswitch_20
    const-string v5, "ANALYTICS_ACTIVE_PHOTO_VIDDUR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    goto/16 :goto_b

    :cond_33
    const/4 v4, 0x2

    goto :goto_c

    :sswitch_21
    const-string v5, "ANALYTICS_IS_CAF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    goto/16 :goto_b

    :cond_34
    const/4 v4, 0x1

    goto :goto_c

    :sswitch_22
    const-string v5, "TOUCH_LOCATION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    goto/16 :goto_b

    :cond_35
    const/4 v4, 0x0

    :goto_c
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_a

    :pswitch_12
    const-string v4, "md_timer_checkin"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "TIMER_CHECKIN"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_a

    :pswitch_13
    const-string v4, "md_shutter_cb_time"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "SHUTTER_CB_TIME"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_a

    :pswitch_14
    const-string v4, "md_auto_enhance_state"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "ANALYTICS_AUTO_ENHANCE_STATE"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_a

    :pswitch_15
    const-string v4, "md_analytic_lens_foc_dist"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "ANALYTICS_LENS_FOCUS_DISTANCE"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(D)V

    goto/16 :goto_a

    :pswitch_16
    const-string v4, "md_caf_supported"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "CAF_SUPPORTED"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_a

    :pswitch_17
    const-string v4, "md_analytic_sw_fl_fir_auto"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "ANALYTICS_SWFLASHFIREDONAUTO"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_a

    :pswitch_18
    const-string v4, "ROI_TOUCH_RECT"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-eqz v4, :cond_24

    const-string v5, "md_roi_touch_rect"

    invoke-virtual {v0, v5}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_19
    const-string v4, "md_faces_detected"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "FACES_DETECTED"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_a

    :pswitch_1a
    const-string v4, "md_analytics_active_photo_saved"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "ANALYTICS_ACTIVE_PHOTO_SAVED"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_a

    :pswitch_1b
    const-string v4, "md_focus_success"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "FOCUS_SUCCESS"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_a

    :pswitch_1c
    const-string v4, "md_motion_photos_allowed"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "ACTIVE_PHOTO_ALLOWED"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_a

    :pswitch_1d
    const-string v4, "md_analytic_photo_solid_time"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "ANALYTICS_PHOTO_SOLID_TIME"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_a

    :pswitch_1e
    const-string v4, "md_focus_areas_supported"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "FOCUS_AREAS_SUPPORTED"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_a

    :pswitch_1f
    const-string v4, "md_analytics_seq_id"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "ANALYTICS_SEQID"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_a

    :pswitch_20
    const-string v4, "md_analytics_active_photo_viddur"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "ANALYTICS_ACTIVE_PHOTO_VIDDUR"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/stream/JsonWriter;->value(J)V

    goto/16 :goto_a

    :pswitch_21
    const-string v4, "md_analytics_is_caf"

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-string v4, "ANALYTICS_IS_CAF"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    goto/16 :goto_a

    :pswitch_22
    const-string v4, "TOUCH_LOCATION"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    if-eqz v4, :cond_24

    const-string v5, "md_touch_location"

    invoke-virtual {v0, v5}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_36
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    :cond_37
    :goto_d
    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    sget-object v3, Lcom/motorola/camera/mcf/McfAuxiliaryData;->IMAGING_MODEL:Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->get(Lcom/motorola/camera/mcf/McfAuxiliaryData$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    if-eqz v2, :cond_38

    const-string v3, "imaging_model_aux_data"

    invoke-virtual {v0, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const-class v3, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    move-object/from16 v4, v18

    invoke-virtual {v4, v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->jsonValue(Ljava/lang/String;)V

    :cond_38
    const-string/jumbo v2, "use_exif_jpeg_as_backup"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v2, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    const-string v2, "is_front_mirror_capture"

    invoke-virtual {v0, v2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    iget-boolean v1, v1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsMirror:Z

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Z)V

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endObject()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7072a335 -> :sswitch_11
        -0x623ed779 -> :sswitch_10
        -0x600a704b -> :sswitch_f
        -0x517bb0e3 -> :sswitch_e
        -0x46650b4d -> :sswitch_d
        -0x227ee0fe -> :sswitch_c
        0x27ebbb -> :sswitch_b
        0x47e24fb -> :sswitch_a
        0x4c20f25 -> :sswitch_9
        0xb0f557f -> :sswitch_8
        0x267ed982 -> :sswitch_7
        0x3df1a4a6 -> :sswitch_6
        0x45b15e6d -> :sswitch_5
        0x4e3fcbed -> :sswitch_4
        0x691f6a50 -> :sswitch_3
        0x735c63bf -> :sswitch_2
        0x76547c6a -> :sswitch_1
        0x7ec1c7cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x68f1932b -> :sswitch_22
        -0x617d95f4 -> :sswitch_21
        -0x5c2b5aa3 -> :sswitch_20
        -0x5533607f -> :sswitch_1f
        -0x25829c92 -> :sswitch_1e
        -0x16f52bf9 -> :sswitch_1d
        0x42bcae2 -> :sswitch_1c
        0x623975c -> :sswitch_1b
        0x159f67ba -> :sswitch_1a
        0x1d62230b -> :sswitch_19
        0x257ad377 -> :sswitch_18
        0x283f4c69 -> :sswitch_17
        0x631970b7 -> :sswitch_16
        0x6619a2a4 -> :sswitch_15
        0x6a5f8a69 -> :sswitch_14
        0x6be44c3b -> :sswitch_13
        0x76c11cf3 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
