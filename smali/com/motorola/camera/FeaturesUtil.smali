.class public abstract Lcom/motorola/camera/FeaturesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AI_CAMERA_CUSTOMIZED_LIMITED_SETS:Z

.field public static final DEBUG_EV_LIST_TOAST:Z

.field public static final DEBUG_PHOTO_METADATA:Z

.field public static final DISABLE_FAST_FRAME:Z

.field public static final ENABLE_FRAME_LOG:Z

.field public static final ENABLE_FRAME_TRACE:Z

.field public static final ENABLE_LP_DEBUG:Z

.field public static final ENABLE_SPLIT_SCREEN:Z

.field public static FOLD_DEVICE:Z

.field public static final SHOW_AUTO_ENHANCE_SUBSTITUTE_POPUP:Z

.field public static final SUPPORT_ACCELERATE:Z

.field public static final SUPPORT_AI:Z

.field public static final SUPPORT_AI_PERSONAL_COLOR_TONE:Z

.field public static final SUPPORT_AUTO_ENHANCE:Z

.field public static final SUPPORT_AUTO_ENHANCE_LOW_RAM:Z

.field public static final SUPPORT_BEAUTY_UPDATE_DEFAULT:Z

.field public static final SUPPORT_BG_SERVICE:Z

.field public static final SUPPORT_BG_SERVICE_SAME_PROCESS:Z

.field public static final SUPPORT_BT709_CODEC_VIDEO:Z

.field public static final SUPPORT_CLI:Z

.field public static final SUPPORT_CLI_MIRROR_INSTANT_REVIEW:Z

.field public static final SUPPORT_CMS_ENABLE:Z

.field public static final SUPPORT_DOLBY_VISION:Z

.field public static final SUPPORT_DUAL_CAPTURE:Z

.field public static final SUPPORT_FACE_BEAUTY:Z

.field public static final SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

.field public static final SUPPORT_FACE_BEAUTY_PORTRAIT:Z

.field public static final SUPPORT_FLASH_TORCH_REAR:Z

.field public static SUPPORT_GAO_DING_NAME:Z

.field public static final SUPPORT_GL_URGENT_THREAD:Z

.field public static final SUPPORT_GRAVITY_SENSOR_RATE_UI:Z

.field public static final SUPPORT_HDR10:Z

.field public static final SUPPORT_HDR10_PLUS:Z

.field public static final SUPPORT_HDR_SETTING_UI:Z

.field public static final SUPPORT_LEVELER_ANTI_DITHER:Z

.field public static final SUPPORT_MAIN_2X_TOGGLE:Z

.field public static final SUPPORT_MCF:Z

.field public static final SUPPORT_MOTION_CAPTURE:Z

.field public static final SUPPORT_P3:Z

.field public static final SUPPORT_PANTONE:Z

.field public static final SUPPORT_PHOTO_BOOTH:Z

.field public static final SUPPORT_PHOTO_LIVE_FILTER:Z

.field public static final SUPPORT_RAW_OFFLINE_UI_FOR_NV:Z

.field public static final SUPPORT_REPROC:Z

.field public static final SUPPORT_SCENE_OPT_IN:Z

.field public static final SUPPORT_SEGMENTATION_MODE:Z

.field public static final SUPPORT_SELECTIVE_COLOR:Z

.field public static final SUPPORT_SINGLE_REAR_BOKEH:Z

.field public static final SUPPORT_SLIDER_RED_DOT:I

.field public static final SUPPORT_SMALL_CLI:Z

.field public static final SUPPORT_SMART_CLI:Z

.field public static final SUPPORT_SUPER_ZOOM:Z

.field public static final SUPPORT_TUTORIAL_DOT_ACTION_SHOT:Z

.field public static final SUPPORT_VIDEO_DV:Z

.field public static final SUPPORT_VIDEO_FOCUS_TRACKING:Z

.field public static final SUPPORT_VIDEO_FOCUS_TRACKING_AUTO_MODE:Z

.field public static final SUPPORT_VIDEO_IQ_DYNAMIC_FPS:Z

.field public static final SUPPORT_VIDEO_RECORDING_KNIFE_SWITCH:Z

.field public static final SUPPORT_ZOOM_HAPTIC_FEEDBACK:Z

.field public static final VIDEO_EXTERNAL_DISPLAY_FHD_30_LIMIT:Z

.field public static final VIDEO_MODE_EXTERNAL_DISPLAY_DEFAULT_OFF:Z

.field public static final ZOOM_COMPLETE_CHECK_ACTIVE_CAMERA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->APP_ACCELERATE:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v4, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ACCELERATE:Z

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_REPROC:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v4, v2, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    sput-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_REPROC:Z

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_MCF:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v5

    sput-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MCF:Z

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_AI_MODELS:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v5

    sput-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->CMS_ENABLE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CMS_ENABLE:Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/motorola/camera/FeaturesUtil;->FOLD_DEVICE:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SMALL_CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->CLI_MIRROR_INSTANT_REVIEW:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI_MIRROR_INSTANT_REVIEW:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SMART_CLI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMART_CLI:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->BG_SERVICE_PROCESSING_SAME_PROCESS:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->DUAL_CAPTURE_PHOTO:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->DUAL_CAPTURE_VIDEO:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_DUAL_CAPTURE:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_FACE_BEAUTY:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_LIVE_FILTER:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_PHOTO_LIVE_FILTER:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->MOTION_CAPTURE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v2, v6, v1}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MOTION_CAPTURE:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->FACE_BEAUTY_MANUAL_CLI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->GL_URGENT_THREAD:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GL_URGENT_THREAD:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->GRAVITY_SENSOR_RATE_UI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GRAVITY_SENSOR_RATE_UI:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->LEVELER_ANTI_DITHER:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_LEVELER_ANTI_DITHER:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_SCENE_OPT_IN:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SCENE_OPT_IN:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SELECTIVE_COLOR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SELECTIVE_COLOR:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SEGMENTATION_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SEGMENTATION_MODE:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->GOOGLE_AUTO_ENHANCE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->GOOGLE_AUTO_ENHANCE_LOW_PERFORMANCE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v6, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v6, v5

    :goto_4
    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AUTO_ENHANCE:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->GOOGLE_AUTO_ENHANCE_LOW_RAM:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AUTO_ENHANCE_LOW_RAM:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_ZOOM:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_ZOOM_MCX:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move v6, v3

    goto :goto_6

    :cond_6
    :goto_5
    move v6, v5

    :goto_6
    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SUPER_ZOOM:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SUPPORT_P3:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_P3:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->PHOTO_BOOTH:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_PHOTO_BOOTH:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->ZOOM_MAIN_2X:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MAIN_2X_TOGGLE:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->REMOVE_HDR_SETTING_UI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_HDR_SETTING_UI:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_FOCUS_TRACKING_AUTO_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_FOCUS_TRACKING_AUTO_MODE:Z

    sget-object v7, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_FOCUS_TRACKING:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v6, :cond_7

    goto :goto_7

    :cond_7
    move v6, v3

    goto :goto_8

    :cond_8
    :goto_7
    move v6, v5

    :goto_8
    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_FOCUS_TRACKING:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_RECORDING_KNIFE_SWITCH:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_RECORDING_KNIFE_SWITCH:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_DV:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_DV:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_IQ_DYNAMIC_FPS:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_VIDEO_IQ_DYNAMIC_FPS:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SUPPORT_AUTO_NV_OPTION:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_RAW_OFFLINE_UI_FOR_NV:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_EXTERNAL_DISPLAY_DEFAULT_OFF:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->VIDEO_MODE_EXTERNAL_DISPLAY_DEFAULT_OFF:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_EXTERNAL_DISPLAY_FHD_30_LIMIT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->VIDEO_EXTERNAL_DISPLAY_FHD_30_LIMIT:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->AI_CAMERA_CUSTOMIZED_LIMITED_TYPE1:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->AI_CAMERA_CUSTOMIZED_LIMITED_SETS:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->ZOOM_COMPLETE_CHECK_ACTIVE_CAMERA:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->ZOOM_COMPLETE_CHECK_ACTIVE_CAMERA:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->SLIDER_RED_DOT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v2, v6, v1}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SLIDER_RED_DOT:I

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->TUTORIAL_DOT_ACTION_SHOT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_TUTORIAL_DOT_ACTION_SHOT:Z

    sput-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GAO_DING_NAME:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_HDR10:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_HDR10:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_HDR10_PLUS:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_HDR10_PLUS:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->VIDEO_DOLBY_VISION:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_DOLBY_VISION:Z

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->AI_PERSONAL_COLOR_TONE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v2, v6, v1}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v0, :cond_9

    move v3, v5

    :cond_9
    sput-boolean v3, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI_PERSONAL_COLOR_TONE:Z

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->SHOW_AUTO_ENHANCE_SUBSTITUTE_POPUP:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SHOW_AUTO_ENHANCE_SUBSTITUTE_POPUP:Z

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->SINGLE_REAR_BOKEH:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SINGLE_REAR_BOKEH:Z

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->PANTONE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_PANTONE:Z

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_ZOOM_HAPTIC_FEEDBACK:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v5

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ZOOM_HAPTIC_FEEDBACK:Z

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->FACE_BEAUTY_UPDATE_DEFAULT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BEAUTY_UPDATE_DEFAULT:Z

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->FACE_BEAUTY_PORTRAIT_REAR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_PORTRAIT:Z

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->FLASH_TORCH_REAR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FLASH_TORCH_REAR:Z

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->BT709_CODEC_VIDEO:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BT709_CODEC_VIDEO:Z

    const-string v0, "ENABLE_FRAME_LOG"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    const-string v0, "ENABLE_FRAME_TRACE"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_TRACE:Z

    const-string v0, "ENABLE_SPLIT_SCREEN"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_SPLIT_SCREEN:Z

    const-string v0, "ENABLE_LP_DEBUG"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_LP_DEBUG:Z

    const-string v0, "DEBUG_PHOTO_METADATA"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->DEBUG_PHOTO_METADATA:Z

    const-string v0, "DEBUG_EV_LIST_TOAST"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->DEBUG_EV_LIST_TOAST:Z

    const-string v0, "DISABLE_FAST_FRAME"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->DISABLE_FAST_FRAME:Z

    return-void
.end method
