.class public Lcom/motorola/camera/mcf/Mcf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcf/Mcf$ShotSlot;,
        Lcom/motorola/camera/mcf/Mcf$InstanceType;,
        Lcom/motorola/camera/mcf/Mcf$SceneMode;
    }
.end annotation


# static fields
.field public static final APP_UWDC_PROCESS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field private static final AUXILIARY_DATA_FULL_FRAME_CALLBACK:I = 0x4

.field private static final AUXILIARY_DATA_NOTIFY_CALLBACK:I = 0x3

.field public static final AVAILABLE_AI_SCENE_DETECT_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_AI_SCENE_DETECT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_ARCSOFT_BOKEH_DEPTHMAP_GENERATION:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_AUTO_CAPTURE_GESTURE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_AUTO_CAPTURE_SMILE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_AUTO_RAW_NV_IN_MCF_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_BEAUTIFICATION_LIMIT_FPS_NEED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_BEAUTIFICATION_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_BEAUTIFICATION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_BOKEH_BEAUTY_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_COMPOSITION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DEDICATED_RAW_NV_IN_MCF_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DEPTH_RENDER_CURRENT_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DEPTH_RENDER_MIN_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DEPTH_RENDER_MIN_HW_REV:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DEPTH_RENDER_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DEPTH_RENDER_RECOMMENDED_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_DUALCAM_DUALSTREAM_DEPTH_RENDER_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_HDR_BEAUTY_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_HDR_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_HDR_SCBOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_IMAGE_REFINER_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MCF_BEST_SHOT_VIDEO_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_API:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_EFFECTS_ADVANCED_MODEL:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_EFFECTS_FACE_MODEL:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_EFFECTS_LIB_NAME:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_EFFECTS_LUT_FILES_IDS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_EFFECTS_LUT_FILES_NAMES_ORDER:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_EFFECTS_MAKEUP_MODEL:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_EFFECTS_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_THUMBNAILS_THREADS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MEISHE_THUMBNAIL_SIZE_DP:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MLRN_TRAINING:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_MULTI_FRAME_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_RAW_HDR_PORTRAIT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_RAW_NV_PORTRAIT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_REALTIME_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_SELECTIVE_COLOR_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_SMART_MODE_SUGGESTION:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_SUPERNIGHT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_SUPERPORTRAIT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_TILTSHIFT_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final AVAILABLE_YUV_NIGHT_VISION_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field private static final CALLBACK:I = 0x4

.field public static final CAP_CURRENT_CALIBRATION_VER_SUPPORT_DEPTH:I = 0x0

.field public static final CAP_MIN_CALIBRATION_VER_SUPPORT_DEPTH:I = 0x0

.field public static final CAP_MIN_HW_REV_SUPPORT_DEPTH:I = 0x0

.field public static final CAP_MODE_AUTO:I = 0x2

.field public static final CAP_MODE_OFF:I = 0x0

.field public static final CAP_MODE_ON:I = 0x1

.field public static final CAP_RAM_SIZE_SUPPORT_DUALSTREAMING_DEPTH:I = 0x0

.field public static final CAP_RECOMMENDED_CALIBRATION_VER_SUPPORT_DEPTH:I = 0x0

.field public static final CAP_SUPER_RESOLUTION_ENABLE:I = 0x0

.field public static final DEBUG:Z = false

.field public static final DEDICATED_NV_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field private static final DETECT_LONG_WAIT:Z = false

.field public static final DISPLAY_FLASH_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final FOCUS_PASSIVE_FOCUSED_GRANTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field private static final FULL_FRAME_CONFIG_CONTROL_CALLBACK:I = 0x1

.field private static final FULL_FRAME_REQUEST_FULL_FRAME_CALLBACK:I = 0x2

.field public static final HAL_ZSL_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final INIT_SCENE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field private static final JPEG_FULL_FRAME_CALLBACK:I = 0x5

.field private static final JSON_FULL_FRAME_CALLBACK:I = 0x7

.field private static final LONG_WAIT_THRESHOLD:J = 0x1L

.field public static final LOW_LIGHT_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_MIN_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_AS_SF_BOKEH_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_HW_FLICKER_DETECT_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_JG_MOTION_CAPTURE_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_MOON_BRIGHT_SEG_Y_HIST_THRESH_RANGE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_MOON_CHOOSE_SCENE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_MOON_DEGREE_OFFSET:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_MOON_DETECT_ENABLED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_MOON_HIST_THRESHOLD_RANGE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_MOON_LIGHT_LUX_VALUE_RANGE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_MOON_MIN_ZOOM_RATIO:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_MOON_USE_ISZ:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_OIS_BOKEH_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_OUTDOOR_DETECT_ENABLED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_OUTDOOR_INTERCEPT:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_OUTDOOR_LIGHT_LUX_SUB_RANGE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_OUTDOOR_LIGHT_LUX_THRESHOLD:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_OUTDOOR_SLOPE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_SERVICE:Ljava/lang/String; = "McfService"

.field public static final MCF_SF_BOKEH_FACE_DETECTION_OPTIONAL:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_SF_BOKEH_TOUCHROI_ENABLE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field private static final MCF_STREAM_COUNT_MAX:I = 0x5

.field public static final MCF_TF_MOTION_CAPTURE_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final MCF_TF_RAW_SR_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final ML_MODEL_SMILE_DETECTION_DSP:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field private static final MOT_SENSOR_TYPE_ALTERNATE_FLICKER:I = 0x10034

.field private static final Milis2Nanos:J = 0xf4240L

.field private static OTP_ARCSOFT_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field private static OTP_JIIGAN_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final PROGRESS_INDICATION_FULL_FRAME_CALLBACK:I = 0x3

.field public static final RAW_HDR_MCF_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final RAW_HDR_SUPPORTED_ALL_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final RAW_NV_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field private static final RAW_SCENE_PREFIX:Ljava/lang/String; = "RAW"

.field public static final REALTIME_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final REALTIME_BOKEH_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final REALTIME_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final REALTIME_BOKEH_OPERATE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final REALTIME_BOKEH_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field private static final REPROCESS_REQUEST_FULL_FRAME_CALLBACK:I = 0x1

.field private static final SCENE_MODE_NOTIFY_CALLBACK:I = 0x1

.field private static final SCENE_PROPERTIES_NOTIFY_CALLBACK:I = 0x2

.field public static final SENSOR_NAME_POSTFIX_FOR_CLI:Ljava/lang/String; = "_cli"

.field public static final STABILITY_DEBUG:Z

.field public static final SUPER_RESOLUTION_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field public static final SUPER_RESOLUTION_MODE_NEED_ENR_ON_PREVIEW:Lcom/motorola/camera/mcf/Mcf$CapKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/motorola/camera/mcf/Mcf$CapKey;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Mcf"

.field private static final TRANSFER_TO_JMS_FULL_FRAME_CALLBACK:I = 0x6

.field public static final VERBOSE:Z = false

.field public static mAcc_values:[F

.field private static mHandler:Landroid/os/Handler;

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field public static mLight_value:F

.field public static mLight_value_alt:F

.field private static mNativeContext:J

.field public static mOri_degrees:[D

.field private static mStreamId:I

.field private static platformName:Ljava/lang/String;

.field private static volatile sIsAeMetadataUsable:Z

.field private static sTimebaseDeltaNs:J


# instance fields
.field private mColorPreview:Lcom/motorola/camera/mcf/McfPreview;

.field private mControlListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/mcf/Mcf$OnControlListener;",
            ">;"
        }
    .end annotation
.end field

.field private mControlListenerHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mControlListenerLock:Ljava/lang/Object;

.field private final mControlLock:Ljava/lang/Object;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mFullFrameListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullFrameListenerLock:Ljava/lang/Object;

.field private mIsInputStreamReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPreviewReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsReprocessOpen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetadataReadyLock:Ljava/lang/Object;

.field private mMonoPreview:Lcom/motorola/camera/mcf/McfPreview;

.field private mNotifyListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyListenerHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyListenerLock:Ljava/lang/Object;

.field private final mNotifyLock:Ljava/lang/Object;

.field private final mPreviewLock:Ljava/lang/Object;

.field private final mReprocessLock:Ljava/lang/Object;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;


# direct methods
.method public static synthetic $r8$lambda$297114qrXvjFethYPlUZXkdD0Ls()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->doStop()V

    return-void
.end method

.method public static synthetic $r8$lambda$IlMrCzFrAAjni7xcVFOwAuREgZg(Landroid/content/Context;Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/motorola/camera/mcf/Mcf;->lambda$start$2(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ND8tNVhAutJ7nFpfD4q-h9V7yD0(Landroid/content/Context;Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/mcf/Mcf;->lambda$doStart$3(Landroid/content/Context;Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R8W68wUBwSFJOARL6YgqeGw4B7A()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->native_resume()V

    return-void
.end method

.method public static synthetic $r8$lambda$UrLxp4CTaXzaO0XkuwZ2vtZyZ_w()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->lambda$pause$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zn0p6_k0LjCjixkl4ghWDXx9Xww()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->lambda$doStop$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$qVaB1iiShvUlvMp0uUq6Jae22u0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vBt94afmQ43v_NDTzpqvRCVtfmQ()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->doDeinit()V

    return-void
.end method

.method public static synthetic $r8$lambda$wKel3_mRSiry-3OOCzhIUVVqNm4(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->lambda$init$1(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmControlListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mControlListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFullFrameListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsReprocessOpen(Lcom/motorola/camera/mcf/Mcf;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotifyListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mNotifyListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReprocessLock(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mReprocessLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsTimebaseDeltaNs()J
    .locals 2

    sget-wide v0, Lcom/motorola/camera/mcf/Mcf;->sTimebaseDeltaNs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;
    .locals 1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisSceneBgService(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->isSceneBgService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smmaxNumberOfFramesRequired(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->maxNumberOfFramesRequired(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnative_sensor_event(IJ[F)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/motorola/camera/mcf/Mcf;->native_sensor_event(IJ[F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isProductionBuild()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/motorola/camera/mcf/Mcf;->STABILITY_DEBUG:Z

    sput-boolean v1, Lcom/motorola/camera/mcf/Mcf;->sIsAeMetadataUsable:Z

    const/4 v0, 0x3

    new-array v2, v0, [F

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->mAcc_values:[F

    new-array v2, v0, [D

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->mOri_degrees:[D

    const/high16 v2, -0x40800000    # -1.0f

    sput v2, Lcom/motorola/camera/mcf/Mcf;->mLight_value:F

    sput v2, Lcom/motorola/camera/mcf/Mcf;->mLight_value_alt:F

    sput v1, Lcom/motorola/camera/mcf/Mcf;->mStreamId:I

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x0

    const-class v4, [I

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_HDR_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_REALTIME_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0xf

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x10

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->REALTIME_BOKEH_OPERATE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x29

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x2a

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MAX_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x2b

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MIN_LEVELS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x2c

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x2d

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x2e

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_AS_SF_BOKEH_DEF_LEVEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x41

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_SF_BOKEH_FACE_DETECTION_OPTIONAL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v3, 0x43

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->MCF_SF_BOKEH_TOUCHROI_ENABLE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-direct {v2, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_BEAUTIFICATION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x1a

    invoke-direct {v1, v2, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_BOKEH_BEAUTY_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_HDR_BEAUTY_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x16

    invoke-direct {v1, v2, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_YUV_NIGHT_VISION_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x17

    invoke-direct {v1, v2, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_AUTO_RAW_NV_IN_MCF_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DEDICATED_RAW_NV_IN_MCF_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v2, 0x19

    invoke-direct {v1, v2, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->DEDICATED_NV_PIXEL_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-direct {v1, v0, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_TILTSHIFT_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_BEAUTIFICATION_LIMIT_FPS_NEED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_BEAUTIFICATION_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x11

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_SELECTIVE_COLOR_MAX_FPS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x12

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MCF_BEST_SHOT_VIDEO_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x9

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_MIN_HW_REV:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_MIN_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0xb

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_RECOMMENDED_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0xc

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_CURRENT_CALIBRATION_VER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0xd

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DUALSTREAM_DEPTH_RENDER_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_DUALCAM_DEPTH_RENDER_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x13

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MLRN_TRAINING:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x14

    const-class v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_AUTO_CAPTURE_SMILE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x1f

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_AUTO_CAPTURE_GESTURE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x27

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->FOCUS_PASSIVE_FOCUSED_GRANTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_COMPOSITION_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_GESTURE_MV1:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x1e

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_SCENE_DETECTION:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x31

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ML_MODEL_SMILE_DETECTION:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x32

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->ML_MODEL_SMILE_DETECTION_DSP:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x35

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->HAL_ZSL_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x40

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->RAW_NV_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x42

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->INIT_SCENE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x20

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_SUPERNIGHT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x2f

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_SUPERPORTRAIT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x30

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_HDR_SCBOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x33

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MULTI_FRAME_BOKEH_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x34

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_RAW_HDR_PORTRAIT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_AI_SCENE_DETECT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x5a

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_AI_SCENE_DETECT_CAPABILITY:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x28

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_SMART_MODE_SUGGESTION:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x22

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->LOW_LIGHT_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x23

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->DISPLAY_FLASH_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x24

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->SUPER_RESOLUTION_MODE_NEED_EDGE_NR_APPLIED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x25

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->SUPER_RESOLUTION_MODE_NEED_ENR_ON_PREVIEW:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x26

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_IMAGE_REFINER_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x36

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x37

    const-class v3, Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LIB_NAME:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x38

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LUT_FILES_NAMES_ORDER:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x39

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_LUT_FILES_IDS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x3a

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAILS_THREADS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x3b

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_THUMBNAIL_SIZE_DP:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x3c

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_API:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x3d

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_FACE_MODEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x3e

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_MAKEUP_MODEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x3f

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MEISHE_EFFECTS_ADVANCED_MODEL:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x44

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->APP_UWDC_PROCESS:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x45

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->RAW_HDR_MCF_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x46

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->RAW_HDR_SUPPORTED_ALL_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x47

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_RAW_NV_PORTRAIT_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x49

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_TF_MOTION_CAPTURE_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x4a

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_TF_RAW_SR_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x4b

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_MOON_DETECT_ENABLED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x4c

    const-class v2, [F

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_MOON_LIGHT_LUX_VALUE_RANGE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x4d

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_MOON_MIN_ZOOM_RATIO:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x4e

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_MOON_DEGREE_OFFSET:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x4f

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_MOON_HIST_THRESHOLD_RANGE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x50

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_MOON_BRIGHT_SEG_Y_HIST_THRESH_RANGE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x51

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_MOON_USE_ISZ:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x52

    invoke-direct {v0, v1, v3}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_MOON_CHOOSE_SCENE_MODE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x55

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_OUTDOOR_DETECT_ENABLED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x56

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_OUTDOOR_LIGHT_LUX_THRESHOLD:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x57

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_OUTDOOR_LIGHT_LUX_SUB_RANGE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x58

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_OUTDOOR_SLOPE:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x59

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_OUTDOOR_INTERCEPT:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x48

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_ARCSOFT_BOKEH_DEPTHMAP_GENERATION:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x53

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_OIS_BOKEH_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x54

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_JG_MOTION_CAPTURE_SUPPORTED:Lcom/motorola/camera/mcf/Mcf$CapKey;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$CapKey;

    const/16 v1, 0x5b

    invoke-direct {v0, v1, v4}, Lcom/motorola/camera/mcf/Mcf$CapKey;-><init>(ILjava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->MCF_HW_FLICKER_DETECT_SUPPORT:Lcom/motorola/camera/mcf/Mcf$CapKey;

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SYSTEM_ARCSOFT_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->OTP_ARCSOFT_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v0, Lcom/motorola/camera/mcf/McfCustomKeyHelper;->SYSTEM_JIIGAN_DUAL_CALIBRATION_KEY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sput-object v0, Lcom/motorola/camera/mcf/Mcf;->OTP_JIIGAN_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$StateHolder;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    .line 7
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isStarted:Ljava/util/concurrent/Future;

    .line 8
    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isPaused:Ljava/util/concurrent/Future;

    .line 9
    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    .line 10
    new-instance v0, Lcom/motorola/camera/mcf/Mcf$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf$1;-><init>(Lcom/motorola/camera/mcf/Mcf;)V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mMetadataReadyLock:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mIsInputStreamReady:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mPreviewLock:Ljava/lang/Object;

    .line 15
    new-instance v0, Lcom/motorola/camera/mcf/McfPreview;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfPreview;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mColorPreview:Lcom/motorola/camera/mcf/McfPreview;

    .line 16
    new-instance v0, Lcom/motorola/camera/mcf/McfPreview;

    invoke-direct {v0}, Lcom/motorola/camera/mcf/McfPreview;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mMonoPreview:Lcom/motorola/camera/mcf/McfPreview;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mReprocessLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerLock:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mControlListenerLock:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mControlLock:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mNotifyLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/mcf/Mcf;-><init>()V

    return-void
.end method

.method public static cancelConsistentPostView()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->native_cancel_post_view()V

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be initialized prior to cancelling."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mMetadataReadyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf;->mPreviewLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/motorola/camera/mcf/Mcf;->getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;

    move-result-object p0

    iget-boolean v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->enumToVal()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->native_preview_close(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewWidth:I

    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewHeight:I

    iput v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewFormat:I

    sget-object v0, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfPreview;->mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static closeReprocess(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mReprocessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->native_reprocess_close(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static createInputStream(Ljava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)Lcom/motorola/camera/mcf/McfInputStream;
    .locals 13

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget v3, Lcom/motorola/camera/mcf/Mcf;->mStreamId:I

    add-int/lit8 v0, v3, 0x1

    sput v0, Lcom/motorola/camera/mcf/Mcf;->mStreamId:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    move/from16 v7, p3

    if-lt v7, v0, :cond_0

    new-instance v2, Lcom/motorola/camera/mcf/McfInputStream;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/motorola/camera/mcf/McfInputStream;-><init>(ILjava/lang/String;Ljava/lang/String;IIIILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;Lcom/motorola/camera/mcf/McfInputStream$StreamMode;)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "image dimensions must be valid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static deinit()V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/motorola/camera/mcf/Mcf;->STABILITY_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v2, "Ignoring denit, MCF was not previously init\'ed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot deinit while started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dequeueImageForReprocess(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Image;
    .locals 3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListener:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Mcf mFullFrameListener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-nez v0, :cond_1

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Mcf OnFullFrameListener reference returned null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :cond_1
    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->dequeueImageForReprocess(Ljava/lang/String;Ljava/lang/String;)Landroid/media/Image;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static doDeinit()V
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/mcf/Mcf;->STABILITY_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v1, "deinit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->native_deinit()V

    return-void
.end method

.method private static doInitByHighPriority(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->loadMcfJni()V

    move-object v2, p0

    check-cast v2, Lcom/google/zxing/Result;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    check-cast p0, Lcom/google/zxing/Result;

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getConfiguration()[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getTuningConfiguration()[B

    move-result-object v5

    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v6}, Lcom/motorola/camera/CameraApp;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MCF_DEBUG_LOGDD_MASK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v7, v7, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8, v7, v9, v2}, Lcom/motorola/camera/mcf/Mcf;->native_construct(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V

    array-length v7, v4

    const/4 v8, 0x1

    if-lt v7, v8, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v2}, Lcom/motorola/camera/mcf/Mcf;->native_init(Ljava/lang/String;[B[BILjava/lang/String;)V

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sput-object v3, Lcom/motorola/camera/mcf/Mcf;->platformName:Ljava/lang/String;

    sget-boolean p0, Lcom/motorola/camera/mcf/Mcf;->STABILITY_DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MCF doinit dur:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Static configuration has an invalid length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private static doStart(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V
    .locals 12

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraId:Ljava/lang/String;

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result v7

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mMcfSensorName:Ljava/lang/String;

    iget-object v4, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mLogicalCameraInfo:Lcom/google/zxing/Result;

    sget-object v5, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "start ("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v5, v4, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v4, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v4, v4, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object v8, p0

    check-cast v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;

    iget-object v8, v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraIds:[Ljava/lang/String;

    move-object v9, p0

    check-cast v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;

    iget-object v9, v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraCharacteristics:[Landroid/hardware/camera2/CameraCharacteristics;

    move-object v11, v6

    move-object v6, v4

    move-object v4, v5

    move-object v5, v11

    invoke-static/range {v1 .. v9}, Lcom/motorola/camera/mcf/Mcf;->native_start(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Landroid/hardware/camera2/CameraCharacteristics;)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "SensorHandlerThread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_1
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "MCF start: timestamp source characteristic value is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    sput-wide v1, Lcom/motorola/camera/mcf/Mcf;->sTimebaseDeltaNs:J

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/motorola/camera/mcf/Mcf;->sTimebaseDeltaNs:J

    :goto_1
    sget-boolean p1, Lcom/motorola/camera/mcf/Mcf;->STABILITY_DEBUG:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v1, "MCF camera: timeSource:"

    const-string v2, ", delta from sensor timestamp:"

    invoke-static {v1, p0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-wide v1, Lcom/motorola/camera/mcf/Mcf;->sTimebaseDeltaNs:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraCharacteristicsForCalibration:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object p1, v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mDualCalibrationDataVendor:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/motorola/camera/mcf/Mcf;->sendSystemCalibrationData(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static doStop()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-direct {v0, v1}, Lcom/motorola/camera/mcf/Mcf;->getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-direct {v2, v3}, Lcom/motorola/camera/mcf/Mcf;->getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;

    move-result-object v2

    iget-boolean v0, v0, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    :cond_0
    iget-boolean v0, v2, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/motorola/camera/mcf/Mcf;->closePreview(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)V

    :cond_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mReprocessLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->closeReprocess(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    :cond_4
    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    sput-object v1, Lcom/motorola/camera/mcf/Mcf;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->native_stop()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static enqueueImageForReprocess(Ljava/lang/String;Ljava/lang/String;Landroid/media/Image;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListener:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Mcf full frame listener is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-nez v0, :cond_1

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Mcf OnFullFrameListener reference returned null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_1
    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->enqueueImageForReprocess(Ljava/lang/String;Ljava/lang/String;Landroid/media/Image;)V

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/mcf/Mcf$CapKey;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;->mType:Ljava/lang/Class;

    iget p1, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    const-class v1, [I

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/mcf/Mcf;->native_get_capabilities(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_3

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/mcf/Mcf;->native_get_capabilities(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_5

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/mcf/Mcf;->native_get_capabilities(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    const-class v1, [F

    if-ne v0, v1, :cond_7

    if-nez p0, :cond_6

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/mcf/Mcf;->native_get_capabilities(Ljava/lang/String;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported type for key "

    invoke-static {p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be initialized prior to querying capabilities."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getInstance()Lcom/motorola/camera/mcf/Mcf;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$LazyLoader;->INSTANCE:Lcom/motorola/camera/mcf/Mcf;

    return-object v0
.end method

.method private getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf;->mColorPreview:Lcom/motorola/camera/mcf/McfPreview;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type input : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mMonoPreview:Lcom/motorola/camera/mcf/McfPreview;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mColorPreview:Lcom/motorola/camera/mcf/McfPreview;

    return-object p0
.end method

.method public static synchronized native getSceneProcessingEstimate(Ljava/lang/String;)I
.end method

.method public static init(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean p0, Lcom/motorola/camera/mcf/Mcf;->STABILITY_DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v1, "Already initialized, ignoring init()"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Lcom/motorola/camera/shared/ThreadPriorityRunnable;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x0

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/shared/ThreadPriorityRunnable;-><init>(Ljava/lang/Runnable;I)V

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static initIfNot(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean p0, Lcom/motorola/camera/mcf/Mcf;->STABILITY_DEBUG:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v1, "mcf is initing"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    if-nez v1, :cond_3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/motorola/camera/mcf/Mcf;->STABILITY_DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v2, "mcf not init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->init(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isInitialized()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v0

    return v0
.end method

.method public static isInitialized(Z)Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    .line 6
    throw p0

    :goto_1
    if-eqz p0, :cond_3

    .line 7
    new-instance p0, Lcom/motorola/camera/mcf/McfException;

    const-string v0, "Could not initialize"

    .line 8
    instance-of v2, v1, Ljava/util/concurrent/ExecutionException;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 9
    :cond_2
    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    throw p0

    :cond_3
    return v0

    :catchall_1
    move-exception p0

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static isPaused()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->isPaused(Z)Z

    move-result v0

    return v0
.end method

.method public static isPaused(Z)Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isPaused:Ljava/util/concurrent/Future;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    .line 6
    throw p0

    :goto_1
    if-eqz p0, :cond_3

    .line 7
    new-instance p0, Lcom/motorola/camera/mcf/McfException;

    const-string v0, "Could not pause"

    .line 8
    instance-of v2, v1, Ljava/util/concurrent/ExecutionException;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 9
    :cond_2
    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    throw p0

    :cond_3
    return v0

    :catchall_1
    move-exception p0

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static synchronized native isSceneBgService(Ljava/lang/String;)Z
.end method

.method public static isStarted()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->isStarted(Z)Z

    move-result v0

    return v0
.end method

.method public static isStarted(Z)Z
    .locals 3

    .line 2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isStarted:Ljava/util/concurrent/Future;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    .line 6
    throw p0

    :goto_1
    if-eqz p0, :cond_3

    .line 7
    new-instance p0, Lcom/motorola/camera/mcf/McfException;

    const-string v0, "Could not start"

    .line 8
    instance-of v2, v1, Ljava/util/concurrent/ExecutionException;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 9
    :cond_2
    invoke-direct {p0, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    throw p0

    :cond_3
    return v0

    :catchall_1
    move-exception p0

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static lambda$doStart$3(Landroid/content/Context;Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;)V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    const-string/jumbo v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    iput-object p0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGyroDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10034

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v3, 0x3

    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    check-cast p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;

    iget-boolean p0, p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mIsMoonDetectSupported:Z

    if-nez p0, :cond_1

    iget-boolean p0, p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mIsOutDoorDetectSupported:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002a

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1
.end method

.method private static synthetic lambda$doStop$5()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$init$1(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->doInitByHighPriority(Lcom/motorola/camera/mcf/Mcf$InitConfigHolder;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "McfService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$pause$4()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mPreviewLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->native_pause()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic lambda$start$2(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/mcf/Mcf;->doStart(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V

    return-void
.end method

.method public static loadMcfJni()V
    .locals 3

    const-string v0, "mcf-jni"

    :try_start_0
    invoke-static {v0}, Lcom/motorola/camera/shared/MotSysTrace;->begin(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/shared/MotSysTrace;->end()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v2, "Could not load libmcf-jni.so"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method private static synchronized native maxNumberOfFramesRequired(Ljava/lang/String;)I
.end method

.method public static synchronized native mcfJobSeqCanStop(IZ)V
.end method

.method public static native native_boost()Z
.end method

.method public static native native_boost_stop()V
.end method

.method private static synchronized native native_cancel_post_view()V
.end method

.method private static synchronized native native_close()V
.end method

.method private static synchronized native native_configureSystemCameraCalibration([BLjava/lang/String;Z)V
.end method

.method private static synchronized native native_construct(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)V
.end method

.method private static synchronized native native_deinit()V
.end method

.method public static native native_get_capabilities(Ljava/lang/String;II)Ljava/lang/Object;
.end method

.method private static synchronized native native_init(Ljava/lang/String;[B[BILjava/lang/String;)V
.end method

.method private static native native_on_capture_completed(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;ZLjava/lang/String;Z)V
.end method

.method private static synchronized native native_pause()V
.end method

.method private static native native_preview_close(I)V
.end method

.method private static native native_preview_open(IIIIZ)V
.end method

.method private static native native_process_preview_image(IJIIIIIIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;F[J)Z
.end method

.method private static native native_reprocess_close(Ljava/lang/String;)V
.end method

.method private static synchronized native native_reprocess_open(Ljava/lang/String;)V
.end method

.method private static synchronized native native_resume()V
.end method

.method private static native native_sensor_event(IJ[F)V
.end method

.method private static synchronized native native_set_events(Ljava/lang/String;)V
.end method

.method private static synchronized native native_start(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;[Landroid/hardware/camera2/CameraCharacteristics;)V
.end method

.method private static synchronized native native_stop()V
.end method

.method public static onCaptureCompleted(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;Ljava/lang/String;Z)V
    .locals 10

    const-string v0, "Failed to update metadata for camera "

    const-string v1, "TotalCaptureResult (isReprocess="

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mMetadataReadyLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    sget-object v4, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    move v3, v6

    :goto_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    sget-object v7, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/mcf/Mcf;->mIsInputStreamReady:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/mcf/Mcf;->mIsInputStreamReady:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    if-nez v5, :cond_4

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "No input stream and preview stream opened."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " tag="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ts="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :try_start_1
    sget-boolean v7, Lcom/motorola/camera/mcf/Mcf;->sIsAeMetadataUsable:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    move v9, p5

    :try_start_2
    invoke-static/range {v3 .. v9}, Lcom/motorola/camera/mcf/Mcf;->native_on_capture_completed(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/motorola/camera/mcf/McfInstanceIdentifier;ZLjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-object v3, p0

    :catch_1
    :try_start_3
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    monitor-exit v2

    goto :goto_5

    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_6
    :goto_5
    return-void
.end method

.method public static openPreview(IIILcom/motorola/camera/mcf/McfPreview$PreviewChanType;Z)V
    .locals 6

    const-string v0, "Preview image dimensions must be valid, PreviewChanType="

    const-string v1, "Preview stream was previously opened, PreviewChanType="

    const-string v2, "Need to start() prior to opening preview stream, PreviewChanType="

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mPreviewLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v4

    invoke-direct {v4, p3}, Lcom/motorola/camera/mcf/Mcf;->getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;

    move-result-object v4

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v2, v4, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    if-nez v2, :cond_1

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    if-lt p1, v1, :cond_0

    iput-object p3, v4, Lcom/motorola/camera/mcf/McfPreview;->mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    iput p0, v4, Lcom/motorola/camera/mcf/McfPreview;->mPreviewWidth:I

    iput p1, v4, Lcom/motorola/camera/mcf/McfPreview;->mPreviewHeight:I

    iput p2, v4, Lcom/motorola/camera/mcf/McfPreview;->mPreviewFormat:I

    invoke-virtual {p3}, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->enumToVal()I

    move-result v0

    invoke-static {p0, p1, p2, v0, p4}, Lcom/motorola/camera/mcf/Mcf;->native_preview_open(IIIIZ)V

    iput-boolean v1, v4, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mMetadataReadyLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/mcf/Mcf;->mIsPreviewReady:Ljava/util/Map;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static openReprocess(Ljava/lang/String;)V
    .locals 4

    const-string v0, "Reprocess stream "

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mReprocessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was previously opened."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf;->native_reprocess_open(Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mIsReprocessOpen:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Need to start() prior to opening reprocess."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static pause()V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-direct {v1, v2}, Lcom/motorola/camera/mcf/Mcf;->getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;

    move-result-object v1

    iget-boolean v1, v1, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Lcom/motorola/camera/shared/ThreadPriorityRunnable;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/shared/ThreadPriorityRunnable;-><init>(Ljava/lang/Runnable;I)V

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v2, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isPaused:Ljava/util/concurrent/Future;

    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be initialized prior to pausing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static postControlEventFromNative(IIIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/mcf/Mcf;->mControlListenerLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    if-nez p3, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Missing listener handler WeakReference for control event."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Handler;

    if-nez p3, :cond_1

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Missing handler for control event callbacks."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$9;

    invoke-direct {p0, p1, p5, p4}, Lcom/motorola/camera/mcf/Mcf$9;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Unknown callback identifier."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static postFullFrameEventFromNative(IIIIIIIJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v9, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Missing listener handler WeakReference for full frame event."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Handler;

    if-nez v10, :cond_1

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Missing handler for full frame request callback"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$2;

    move v2, p2

    move v3, p3

    move/from16 v4, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v1, p12

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/mcf/Mcf$2;-><init>(Ljava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_2
    move-object/from16 v7, p10

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$3;

    move-object/from16 p1, p14

    move-object/from16 p2, p15

    invoke-direct {p0, p4, v7, p2, p1}, Lcom/motorola/camera/mcf/Mcf$3;-><init>(ILjava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v10, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$4;

    move v1, p2

    move v2, p3

    move/from16 v3, p5

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/mcf/Mcf$4;-><init>(IIIJLjava/lang/Object;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    move-object/from16 v6, p9

    const/4 p2, 0x4

    if-ne p0, p2, :cond_5

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$5;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v6}, Lcom/motorola/camera/mcf/Mcf$5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    const/4 p2, 0x5

    if-ne p0, p2, :cond_6

    invoke-static {p1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object p0

    move-object p1, v6

    check-cast p1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v7

    check-cast v1, [B

    move-object/from16 v2, p13

    check-cast v2, [B

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$6;

    move-object/from16 p7, p2

    move-object/from16 p8, p3

    move-object/from16 p9, p4

    move-object/from16 p5, p11

    move-object/from16 p6, p12

    move-object/from16 p10, v0

    move-object p2, v1

    move-object p3, v2

    move-object p4, p0

    move-object p0, v3

    invoke-direct/range {p0 .. p10}, Lcom/motorola/camera/mcf/Mcf$6;-><init>(Lcom/motorola/camera/mcf/McfInstanceIdentifier;[B[BLcom/motorola/camera/mcf/Mcf$ShotSlot;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v10, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_6
    const/4 p1, 0x6

    if-ne p0, p1, :cond_7

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$7;

    const/4 p1, 0x0

    move-object/from16 v8, p11

    invoke-direct {p0, v6, v7, v8, p1}, Lcom/motorola/camera/mcf/Mcf$7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_7
    const/4 p1, 0x7

    if-ne p0, p1, :cond_8

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$8;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v6, v7}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Unknown callback identifier."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v9

    return-void

    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static postNotifyEventFromNative(IIIILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p2

    iget-object p2, p2, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    if-nez p3, :cond_0

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Missing listener handler WeakReference for notify event."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p3

    iget-object p3, p3, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Handler;

    if-nez p3, :cond_1

    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Missing handler for notify event callbacks."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    return-void

    :cond_1
    const/4 p5, 0x1

    if-ne p0, p5, :cond_2

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$10;

    invoke-direct {p0, p1}, Lcom/motorola/camera/mcf/Mcf$10;-><init>(I)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$5;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lcom/motorola/camera/mcf/Mcf$5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    if-ne p0, p1, :cond_4

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$5;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lcom/motorola/camera/mcf/Mcf$5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    if-ne p0, p1, :cond_5

    new-instance p0, Lcom/motorola/camera/mcf/Mcf$5;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lcom/motorola/camera/mcf/Mcf$5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Unknown callback identifier."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static processPreviewImage(Landroid/media/Image;Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;FLandroid/graphics/Rect;[J)Z
    .locals 26

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v1, v0, Lcom/motorola/camera/mcf/Mcf;->mPreviewLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lcom/motorola/camera/mcf/Mcf;->getPreviewChan(Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;)Lcom/motorola/camera/mcf/McfPreview;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->isStarted(Z)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    monitor-exit v1

    return v4

    :catchall_0
    move-exception v0

    goto/16 :goto_0

    :cond_0
    invoke-static {v2}, Lcom/motorola/camera/mcf/Mcf;->isPaused(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v1

    return v4

    :cond_1
    iget-boolean v3, v0, Lcom/motorola/camera/mcf/McfPreview;->mIsPreviewOpen:Z

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v3

    iget v5, v0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewWidth:I

    if-ne v3, v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    iget v5, v0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewHeight:I

    if-ne v3, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    iget v5, v0, Lcom/motorola/camera/mcf/McfPreview;->mPreviewFormat:I

    if-ne v3, v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    const/16 v5, 0x23

    if-eq v3, v5, :cond_2

    monitor-exit v1

    return v4

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    monitor-exit v1

    return v4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    move/from16 v6, p2

    invoke-static {v6, v5}, Lcom/motorola/camera/mcf/Mcf;->scaleCrop(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v0, v0, Lcom/motorola/camera/mcf/McfPreview;->mChantype:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    invoke-virtual {v0}, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->enumToVal()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v10

    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    aget-object v2, v3, v4

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v18

    aget-object v2, v3, v4

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v19

    aget-object v2, v3, v4

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    const/4 v2, 0x2

    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v21

    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v22

    aget-object v2, v3, v2

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v23

    move-object/from16 v25, p4

    move/from16 v24, v6

    move v6, v0

    invoke-static/range {v6 .. v25}, Lcom/motorola/camera/mcf/Mcf;->native_process_preview_image(IJIIIIIIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;F[J)Z

    move-result v0

    monitor-exit v1

    return v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Preview stream / Image format mismatch."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Preview stream / Image height mismatch."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Preview stream / Image width mismatch."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Preview stream was not opened."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resume()V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/shared/ThreadPriorityRunnable;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/shared/ThreadPriorityRunnable;-><init>(Ljava/lang/Runnable;I)V

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v1, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v2, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isPaused:Ljava/util/concurrent/Future;

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be initialized prior to resuming."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static scaleCrop(FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p0, v3

    if-gez v3, :cond_0

    int-to-float v0, v2

    mul-float/2addr v0, p0

    float-to-int v0, v0

    int-to-float v1, p1

    mul-float/2addr p0, v1

    float-to-int p0, p0

    sub-int/2addr v2, v0

    div-int/lit8 v1, v2, 0x2

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    move v2, v0

    move v0, v1

    move v1, p1

    move p1, p0

    :cond_0
    and-int/lit8 p0, v0, 0x1

    add-int/2addr v0, p0

    and-int/lit8 p0, v1, 0x1

    add-int/2addr v1, p0

    shr-int/lit8 p0, v2, 0x1

    shl-int/lit8 p0, p0, 0x1

    shr-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p0, v0

    add-int/2addr p1, v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private static sendSystemCalibrationData(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;)V
    .locals 1

    const-string v0, "jiigan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/motorola/camera/mcf/Mcf;->OTP_JIIGAN_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Unable to get JIIGAN calibration blob characteristics"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object p1, Lcom/motorola/camera/mcf/Mcf;->OTP_ARCSOFT_CALIB_BLOB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "Unable to get ARCSOFT calibration blob characteristics"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    array-length p1, p0

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "binaryCalib"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/motorola/camera/mcf/Mcf;->native_configureSystemCameraCalibration([BLjava/lang/String;Z)V

    return-void

    :cond_2
    :goto_2
    sget-object p0, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string p1, "OTP calibration is empty."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setAeMetadataUsable(Z)V
    .locals 0

    sput-boolean p0, Lcom/motorola/camera/mcf/Mcf;->sIsAeMetadataUsable:Z

    return-void
.end method

.method public static setControlListener(Lcom/motorola/camera/mcf/Mcf$OnControlListener;Landroid/os/Handler;)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mControlListenerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    :cond_3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/motorola/camera/mcf/Mcf;->mControlListener:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handler is null but the current thread is not a looper"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mControlListener:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mControlListenerHandler:Ljava/lang/ref/WeakReference;

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setEvents(Lcom/motorola/camera/mcf/McfParameters;)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/mcf/McfParameters;->mJsonString:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{\"params\":["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/camera/mcf/McfParameters;->mIsEmpty:Z

    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->native_set_events(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setFullFrameListener(Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;Landroid/os/Handler;)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v3, v2, :cond_2

    if-eq v1, p1, :cond_3

    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListener:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handler is null but the current thread is not a looper"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListener:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mFullFrameListenerHandler:Ljava/lang/ref/WeakReference;

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setInputStreamReady(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mMetadataReadyLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mIsInputStreamReady:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setNotifyListener(Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;Landroid/os/Handler;)V
    .locals 4

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    :cond_3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/motorola/camera/mcf/Mcf;->mNotifyListener:Ljava/lang/ref/WeakReference;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handler is null but the current thread is not a looper"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mNotifyListener:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf;->mNotifyListenerHandler:Ljava/lang/ref/WeakReference;

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static start(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/shared/ThreadPriorityRunnable;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/shared/ThreadPriorityRunnable;-><init>(Ljava/lang/Runnable;I)V

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isStarted:Ljava/util/concurrent/Future;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already started."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be initialized prior to starting."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static stop()V
    .locals 5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf;->isInitialized(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf;->mState:Lcom/motorola/camera/mcf/Mcf$StateHolder;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->getInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/mcf/Mcf;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isStarted:Ljava/util/concurrent/Future;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be initialized prior to stopping."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public finalize()V
    .locals 5

    const-string/jumbo v0, "super.finalize() thrown : "

    const-string v1, "finalize() thrown : "

    :try_start_0
    sget-boolean v2, Lcom/motorola/camera/mcf/Mcf;->STABILITY_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    const-string v3, "finalize"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->native_close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :goto_1
    :try_start_2
    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    :catchall_3
    move-exception p0

    sget-object v1, Lcom/motorola/camera/mcf/Mcf;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method
