.class public abstract Lcom/motorola/camera/analytics/PostCaptureEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "SourceFile"


# static fields
.field public static final ASSISTIVE_GRID:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final AUTOFOCUSAREASUPPORT:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final AUTO_FOCUS_STATE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final AUTO_FOCUS_TRACKING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final AUTO_MACRO_TELE_SWITCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final BEAUTY:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final CAFFAILURE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final CAFSUPPORT:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final CAPTURETRIGGER:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final DIMENSION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final DUAL_CAPTURE_CAM_COMBINATION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final DUAL_CAPTURE_LAYOUT:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final DUAL_SCREEN_ENABLED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final FACE_BEAUTY_SMART_ADJUSTMENT:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final FACE_BEAUTY_VERSION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final FACING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final FILTER_SELECTED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final FLASHMODE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final FOCMODE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final FOCUSFAILURE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final GEOTAGON:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final GESTURE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final HDR_PREFERENCE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final IMAGE_TUNING_APK_VERSION:Lcom/google/android/gms/common/internal/zzv;

.field public static final LEVELER:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final NUMFACEDET:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ORIENTATION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final PHYSICAL_CAMERA:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final RESOLUTION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final ROILOCATION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final SHUTTERTONE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final SMILE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final STORAGETYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final TAPLOCATION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final TIMEOFPIC:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final TIMETOSAVE:Lcom/google/android/gms/common/internal/zzv;

.field public static final TIMETOSHUTTERCALLBACK:Lcom/google/android/gms/common/internal/zzv;

.field public static final UI_ZOOM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final WATERMARK:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final ZOOM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ZOOM_SEGMENT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "GTAG"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->GEOTAGON:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "FLASHMODE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FLASHMODE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ZOOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->ZOOM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "STRG"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->STORAGETYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "SVTIME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->TIMETOSAVE:Lcom/google/android/gms/common/internal/zzv;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "ORNT"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->ORIENTATION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "FOCFAIL"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCUSFAILURE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "CAFFAIL"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->CAFFAILURE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "ZSLTIME"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->TIMETOSHUTTERCALLBACK:Lcom/google/android/gms/common/internal/zzv;

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "VIDLNGTH"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "SHTRTONE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->SHUTTERTONE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "NUMFACEDET"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->NUMFACEDET:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "TIMEOFPIC"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->TIMEOFPIC:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "FLASHFIRED"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "BURSTMODEPICS"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "VIDEOSNAPSHOTS"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "TAPLOCATION"

    const-string v4, "0,0"

    invoke-direct {v0, v1, v4, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->TAPLOCATION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "PANFAIL"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "PANCANCEL"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "PANSAVETIME"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "HDRMODE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->HDR_PREFERENCE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "TAPDIMENSION"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DIMENSION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "ROILOC"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->ROILOCATION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "AUTOFOCAREASPRT"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->AUTOFOCUSAREASUPPORT:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "CAFSPRT"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->CAFSUPPORT:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "LGHTSRC"

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "CAPTURETRIGGER"

    const-string v5, "SHTRBTN"

    invoke-direct {v0, v1, v5, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->CAPTURETRIGGER:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "TIMERVAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "PHTOSLD"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "BEAUTY"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->BEAUTY:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "FILEFORMAT"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "RESOLN"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->RESOLUTION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "FPS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/mlkit/common/internal/zzb;

    const-string v1, "XPSR"

    const-wide/16 v5, 0x0

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/google/mlkit/common/internal/zzb;-><init>(Ljava/lang/String;DZ)V

    new-instance v0, Lcom/google/mlkit/common/internal/zzb;

    const-string v1, "XPSRTIME"

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/google/mlkit/common/internal/zzb;-><init>(Ljava/lang/String;DZ)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ISOSPEED"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "WHTBLNC"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "MANFOCUS"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "FACING"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FACING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "MTNSTAT"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "MTNSVD"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "MTNVIDDUR"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "FOCMODE"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCMODE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "GESTUCAP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->GESTURE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "SMILECAP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->SMILE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "WATERMARK"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->WATERMARK:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/mlkit/common/internal/zzb;

    const-string v1, "LUX"

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/google/mlkit/common/internal/zzb;-><init>(Ljava/lang/String;DZ)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "DSENABLED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_SCREEN_ENABLED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/mlkit/common/internal/zzb;

    const-string v1, "FOCDIST"

    invoke-direct {v0, v1, v5, v6, v3}, Lcom/google/mlkit/common/internal/zzb;-><init>(Ljava/lang/String;DZ)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "SSMTOGGLE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "SSMACTION"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "SSMEDIT"

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "DPCLOUT"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_CAPTURE_LAYOUT:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "DPCCAMCB"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_CAPTURE_CAM_COMBINATION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "IMGTUVER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->IMAGE_TUNING_APK_VERSION:Lcom/google/android/gms/common/internal/zzv;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "DOCTOAST"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "FILTER"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FILTER_SELECTED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "HEVC"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "VSTAB"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "ASGRID"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->ASSISTIVE_GRID:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "LEVEL"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->LEVELER:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "SPMIRR"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "MIC"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "AUDIOZM"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "ZOOMSEG"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->ZOOM_SEGMENT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "MCFSCMD"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "D_CNT"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "D_DUR"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "D_JOB"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "VDPORT"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "FACESIZE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "SATZMTAP"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "MIREFFCT"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "FBSMART"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FACE_BEAUTY_SMART_ADJUSTMENT:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ENHANCE"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "AUTONV"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "FBVER"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->FACE_BEAUTY_VERSION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "UIZOOM"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->UI_ZOOM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "VDVALIGN"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "VDVSTATE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "CAPTURETIME"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "VDNVSTT"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "PHYCAM"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->PHYSICAL_CAMERA:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "FOCSTATE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->AUTO_FOCUS_STATE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "AFOCTCK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->AUTO_FOCUS_TRACKING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "LEXPSCN"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "LEXPSHTT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "LEXPSTOP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "AUTOSWT"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->AUTO_MACRO_TELE_SWITCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "AICTSEL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "VIDEOHDR"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "AIRPAUSE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "AIRSTOP"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static getCaptureTrigger(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v0, "CAPTURE_TRIGGER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent$1;->$SwitchMap$com$motorola$camera$fsm$camera$Trigger$TriggerType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "DVBD"

    return-object p0

    :pswitch_1
    const-string p0, "DVAT"

    return-object p0

    :pswitch_2
    const-string p0, "TOUCH"

    return-object p0

    :pswitch_3
    const-string v0, "AIR_GESTURE_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "AIRGESTURE"

    return-object p0

    :cond_1
    const-string v0, "CAPTURE_AUTO_CAPTURE_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "SHTRBTN"

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const-string p0, "AUTO"

    return-object p0

    :cond_3
    const-string p0, "GESTURE"

    return-object p0

    :cond_4
    const-string p0, "SMILE"

    return-object p0

    :pswitch_4
    const-string p0, "AOV"

    return-object p0

    :pswitch_5
    const-string v0, "KEY_CODE"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_8

    const/16 v0, 0x42

    if-eq p0, v0, :cond_7

    const/16 v0, 0x55

    if-eq p0, v0, :cond_6

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_5

    const/16 v0, 0x50

    if-eq p0, v0, :cond_8

    packed-switch p0, :pswitch_data_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    const-string p0, "VOL"

    return-object p0

    :cond_5
    const-string p0, "HDSET"

    return-object p0

    :cond_6
    const-string p0, "MEDPLPS"

    return-object p0

    :cond_7
    :pswitch_7
    const-string p0, "KPAD"

    return-object p0

    :cond_8
    const-string p0, "CAMKEY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static getExposureCompensation(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/Double;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    .line 7
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getExposureCompensation(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static getExposureCompensation(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Double;
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr v1, p0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x2

    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 4
    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static populateDualCaptureData(Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
    .locals 2

    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_LAYOUT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_CAMERA_GROUP_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_CAPTURE_LAYOUT:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_CAPTURE_CAM_COMBINATION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    check-cast v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;

    iget-object v4, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    const-string v6, "USECASE"

    invoke-virtual {v1, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/analytics/PostCaptureEvent;->GEOTAGON:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-virtual {v7, v2, v6}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object v6, Lcom/motorola/camera/analytics/PostCaptureEvent;->FLASHMODE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getFlashMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getZoomValue(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/analytics/PostCaptureEvent;->ZOOM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v7, v2, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :try_start_0
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_UI_ANALYTICS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v8, v8, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v9, Lcom/motorola/camera/analytics/PostCaptureEvent;->UI_ZOOM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v8, v6

    :catch_1
    iget-object v9, v0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    const-string v10, "addData: UI_ZOOM is null or invalid"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x2

    if-eqz v9, :cond_0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "ext"

    goto :goto_1

    :cond_0
    const-string v9, "int"

    :goto_1
    sget-object v11, Lcom/motorola/camera/analytics/PostCaptureEvent;->STORAGETYPE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v11, v9, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    iget v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mOrientation:I

    if-eqz v9, :cond_2

    const/16 v11, 0xb4

    if-ne v9, v11, :cond_1

    goto :goto_2

    :cond_1
    const-string v9, "PORT"

    goto :goto_3

    :cond_2
    :goto_2
    const-string v9, "LAND"

    :goto_3
    sget-object v11, Lcom/motorola/camera/analytics/PostCaptureEvent;->ORIENTATION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v11, v9, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v11, "ANALYTICS_IS_CAF"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_3

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v13, "FOCUS_SUCCESS"

    invoke-virtual {v9, v13, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    xor-int/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    sget-object v14, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCUSFAILURE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-virtual {v14, v2, v13}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object v13, Lcom/motorola/camera/analytics/PostCaptureEvent;->CAFFAILURE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v13, v2, v9}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    :cond_3
    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v13, "SHUTTER_CB_TIME"

    const-wide/16 v14, 0x0

    invoke-virtual {v9, v13, v14, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v13, Lcom/motorola/camera/analytics/PostCaptureEvent;->TIMETOSHUTTERCALLBACK:Lcom/google/android/gms/common/internal/zzv;

    invoke-virtual {v13, v2, v9}, Lcom/google/android/gms/common/internal/zzv;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v13, Lcom/motorola/camera/analytics/PostCaptureEvent;->SHUTTERTONE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-virtual {v13, v2, v9}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v13, "FACES_DETECTED"

    invoke-virtual {v9, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v13, Lcom/motorola/camera/analytics/PostCaptureEvent;->NUMFACEDET:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v13, v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    new-instance v9, Ljava/util/GregorianCalendar;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v13}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    const/16 v6, 0xb

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move/from16 v16, v11

    const/16 v11, 0xc

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v6, v9}, [Ljava/lang/Object;

    move-result-object v6

    const-string v9, "%02d%02d"

    invoke-static {v13, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/motorola/camera/analytics/PostCaptureEvent;->TIMEOFPIC:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v9, v6, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "TOUCH_LOCATION"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    const-string v9, ","

    if-nez v6, :cond_4

    const-string v6, "0,0"

    goto :goto_4

    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    sget-object v11, Lcom/motorola/camera/analytics/PostCaptureEvent;->TAPLOCATION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v11, v6, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v6, Lcom/motorola/camera/analytics/PostCaptureEvent;->HDR_PREFERENCE:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getHdrMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v11, "NF"

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    const-string/jumbo v13, "x"

    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v13, v6

    if-ne v13, v10, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v13, v6, v16

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v12

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_6
    :goto_5
    sget-object v6, Lcom/motorola/camera/analytics/PostCaptureEvent;->DIMENSION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v6, v11, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v6, "SERVICEMODE"

    invoke-virtual {v1, v6}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v2, v6, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    instance-of v6, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    const-string v11, "0.0,0.0"

    if-nez v6, :cond_7

    goto :goto_6

    :cond_7
    iget-object v6, v3, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object v13, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->DTFE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v10, v10, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v6, v6, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "ROI_TOUCH_RECT"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v6, :cond_8

    iget v10, v6, Landroid/graphics/Rect;->left:I

    iget v11, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v13, v6, Landroid/graphics/Rect;->top:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v6

    int-to-float v6, v13

    div-float/2addr v6, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_8
    :goto_6
    sget-object v6, Lcom/motorola/camera/analytics/PostCaptureEvent;->ROILOCATION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v6, v11, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    iget v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSessionId:I

    int-to-long v9, v6

    const-string v6, "SHOTSEQID"

    invoke-virtual {v2, v6, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "FOCUS_AREAS_SUPPORTED"

    invoke-virtual {v6, v9, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v9, Lcom/motorola/camera/analytics/PostCaptureEvent;->AUTOFOCUSAREASUPPORT:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-virtual {v9, v2, v6}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "CAF_SUPPORTED"

    invoke-virtual {v6, v9, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v9, Lcom/motorola/camera/analytics/PostCaptureEvent;->CAFSUPPORT:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-virtual {v9, v2, v6}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    iget v6, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    iget-object v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6, v9, v10, v4}, Lcom/motorola/camera/analytics/LogEvent;->getCaptureMode(ILcom/motorola/camera/ShotType;Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "MODE"

    invoke-virtual {v2, v9, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "SAVE_TIME"

    invoke-virtual {v9, v10, v14, v15}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->TIMETOSAVE:Lcom/google/android/gms/common/internal/zzv;

    invoke-virtual {v10, v2, v9}, Lcom/google/android/gms/common/internal/zzv;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    sget-object v9, Lcom/motorola/camera/analytics/PostCaptureEvent;->CAPTURETRIGGER:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-static {v4}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getCaptureTrigger(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v10, v10, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    sget-object v11, Lcom/motorola/camera/analytics/PostCaptureEvent;->FACE_BEAUTY_SMART_ADJUSTMENT:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    if-eqz v9, :cond_a

    sget-object v9, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v13, Lcom/motorola/camera/AppFeatures$Feature;->FACE_BEAUTY_MANUAL_MULTI:Lcom/motorola/camera/AppFeatures$Feature;

    iget-object v9, v9, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    check-cast v9, Ljava/util/EnumSet;

    invoke-virtual {v9, v13}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    goto :goto_7

    :cond_9
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Lcom/motorola/camera/analytics/PostCaptureEvent;->BEAUTY:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v11, v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    goto :goto_7

    :cond_a
    invoke-virtual {v11, v2, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    :goto_7
    sget-object v9, Lcom/motorola/camera/analytics/PostCaptureEvent;->FACE_BEAUTY_VERSION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v9, v10, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->FOCMODE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v10, v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "ANALYTICS_AUTO_FOCUS_STATE"

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->AUTO_FOCUS_STATE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v10, v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    sget-object v9, Lcom/motorola/camera/analytics/PostCaptureEvent;->RESOLUTION:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/analytics/PostCaptureEvent;->getCapturedResolution(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    const/4 v11, 0x0

    move/from16 v13, v16

    invoke-static {v9, v10, v12, v11, v13}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;ZLjava/lang/String;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->FACING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v10, v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraId:Ljava/lang/String;

    iget-object v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v13, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSatPhysicalCameraId:Ljava/lang/String;

    const/16 v14, 0x64

    if-ge v8, v14, :cond_c

    if-gez v8, :cond_b

    goto :goto_9

    :cond_b
    move v15, v12

    :goto_8
    const/4 v12, 0x1

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v15, 0x1

    goto :goto_8

    :goto_a
    invoke-static {v9, v10, v12, v13, v15}, Lcom/motorola/camera/analytics/LogEvent;->getCameraIdForAnalytics(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;ZLjava/lang/String;Z)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->PHYSICAL_CAMERA:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v10, v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->GESTURE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->GESTURE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-virtual {v10, v2, v9}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->AUTO_SMILE_CAPTURE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->SMILE_CAPTURE_ENABLED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-virtual {v10, v2, v9}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->WATER_MARK:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->WATERMARK:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-virtual {v10, v2, v9}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget v10, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    const-string v12, "IS_CLI_DISPLAY"

    invoke-virtual {v1, v12}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupported(Z)Z

    move-result v12

    if-nez v12, :cond_d

    goto/16 :goto_12

    :cond_d
    sget-object v12, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v12, v12, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_e

    const/4 v12, 0x0

    goto :goto_b

    :cond_e
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :goto_b
    if-lez v12, :cond_f

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v12

    if-nez v12, :cond_f

    const/4 v12, 0x1

    goto :goto_c

    :cond_f
    const/4 v12, 0x0

    :goto_c
    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    if-nez v13, :cond_11

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupportedMode(I)Z

    move-result v13

    if-nez v13, :cond_10

    const/4 v13, 0x2

    if-ne v10, v13, :cond_11

    :cond_10
    const/4 v13, 0x1

    goto :goto_d

    :cond_11
    const/4 v13, 0x0

    :goto_d
    if-eqz v13, :cond_12

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_REVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v13, v13, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    or-int/lit8 v12, v12, 0x2

    :cond_12
    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v13

    if-nez v13, :cond_14

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupportedMode(I)Z

    move-result v13

    if-nez v13, :cond_13

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupportedVideoMode(I)Z

    move-result v13

    if-eqz v13, :cond_14

    :cond_13
    const/4 v13, 0x1

    goto :goto_e

    :cond_14
    const/4 v13, 0x0

    :goto_e
    if-eqz v13, :cond_15

    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_ANIMATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v13, v13, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    or-int/lit8 v12, v12, 0x4

    :cond_15
    sget-object v13, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v13, v13, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-nez v13, :cond_16

    const/4 v13, -0x1

    goto :goto_f

    :cond_16
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    :goto_f
    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsHelper;->isFrontCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupportedMode(I)Z

    move-result v9

    if-nez v9, :cond_17

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsHelper;->isDualScreenSupportedVideoMode(I)Z

    move-result v9

    if-eqz v9, :cond_18

    :cond_17
    const/4 v9, 0x1

    goto :goto_10

    :cond_18
    const/4 v9, 0x0

    :goto_10
    if-eqz v9, :cond_1b

    const/4 v9, -0x1

    if-eq v13, v9, :cond_1b

    const/4 v9, 0x1

    if-eq v13, v9, :cond_1a

    const/4 v9, 0x2

    if-eq v13, v9, :cond_19

    goto :goto_11

    :cond_19
    or-int/lit8 v12, v12, 0x10

    goto :goto_11

    :cond_1a
    or-int/lit8 v12, v12, 0x8

    :cond_1b
    :goto_11
    sget-object v9, Lcom/motorola/camera/analytics/PostCaptureEvent;->DUAL_SCREEN_ENABLED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    :goto_12
    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v10, "ANALYTICS_LENS_FOCUS_DISTANCE"

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v12, "FOCDIST"

    invoke-virtual {v2, v12, v9, v10}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_1c
    invoke-static {}, Landroidx/compose/runtime/Latch;->getInstance()Landroidx/compose/runtime/Latch;

    move-result-object v9

    invoke-static {}, Landroidx/compose/runtime/Latch;->getInstance()Landroidx/compose/runtime/Latch;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/runtime/Latch;->getImagerTuningName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/Latch;->getLongVersionForPackage(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->IMAGE_TUNING_APK_VERSION:Lcom/google/android/gms/common/internal/zzv;

    invoke-virtual {v10, v2, v9}, Lcom/google/android/gms/common/internal/zzv;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheEffectsModeKey()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMeisheFileNameKey()Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Lcom/motorola/camera/utility/FilterMeisheUtil;->TAG:Ljava/lang/String;

    const-string v10, "nameFilter"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lcom/motorola/camera/utility/FilterMeisheUtil;->filterMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->FILTER_SELECTED:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v10, v2, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    :cond_1d
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ASSISTIVE_GRID:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_1e

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->ASSISTIVE_GRID:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-virtual {v10, v2, v9}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    :cond_1e
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->PRO_LEVELER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_1f

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/analytics/PostCaptureEvent;->LEVELER:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-virtual {v10, v2, v9}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    :cond_1f
    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_SEGMENT:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v9, v9, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v9, Lcom/motorola/camera/analytics/PostCaptureEvent;->ZOOM_SEGMENT:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    invoke-virtual {v9, v5, v2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingSupported()Z

    move-result v5

    const/4 v13, 0x3

    if-nez v5, :cond_20

    const/4 v5, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v12, 0x1

    goto :goto_14

    :cond_20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v9, "ANALYTICS_AUTO_FOCUS_TRACKING"

    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_24

    if-eqz v5, :cond_23

    const/4 v12, 0x1

    const/4 v10, 0x2

    if-eq v5, v12, :cond_22

    if-eq v5, v10, :cond_21

    :goto_13
    const/4 v5, 0x0

    goto :goto_14

    :cond_21
    const/4 v5, 0x4

    goto :goto_14

    :cond_22
    move v5, v13

    goto :goto_14

    :cond_23
    const/4 v10, 0x2

    const/4 v12, 0x1

    move v5, v10

    goto :goto_14

    :cond_24
    const/4 v10, 0x2

    const/4 v12, 0x1

    move v5, v12

    goto :goto_14

    :cond_25
    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v12, 0x1

    goto :goto_13

    :goto_14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v15, Lcom/motorola/camera/analytics/PostCaptureEvent;->AUTO_FOCUS_TRACKING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v15, v2, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    iget-object v5, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v15, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v9, Lcom/motorola/camera/AppFeatures$Feature;->AUTO_MACRO:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v15, v9, v7}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_26

    move v7, v12

    goto :goto_15

    :cond_26
    const/4 v7, 0x0

    :goto_15
    if-eqz v7, :cond_2b

    const-string v7, "SINGLESHOT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->AUTO_MACRO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v6, v6, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iget-object v4, v4, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSatPhysicalCameraId:Ljava/lang/String;

    invoke-static {v4, v11}, Lcom/motorola/camera/settings/SettingsManager;->getCameraType(Ljava/lang/String;Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/settings/CameraType;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v6, v6, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    array-length v7, v6

    sget-object v9, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-le v7, v11, :cond_27

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    goto :goto_16

    :cond_27
    const/high16 v6, -0x40800000    # -1.0f

    :goto_16
    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    const/4 v9, 0x0

    if-ne v4, v7, :cond_28

    cmpl-float v7, v6, v9

    if-lez v7, :cond_28

    int-to-float v7, v8

    cmpl-float v7, v7, v6

    if-ltz v7, :cond_28

    move v6, v12

    goto :goto_17

    :cond_28
    sget-object v7, Lcom/motorola/camera/settings/CameraType;->BACK_WIDE:Lcom/motorola/camera/settings/CameraType;

    if-ne v4, v7, :cond_2a

    cmpl-float v4, v6, v9

    if-lez v4, :cond_29

    int-to-float v4, v8

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_29

    move v6, v10

    goto :goto_17

    :cond_29
    if-eqz v5, :cond_2a

    if-lt v8, v14, :cond_2a

    move v6, v13

    goto :goto_17

    :cond_2a
    const/4 v6, 0x0

    goto :goto_17

    :cond_2b
    const/4 v6, -0x1

    :goto_17
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/analytics/PostCaptureEvent;->AUTO_MACRO_TELE_SWITCH:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/camera/analytics/PostCaptureEvent;->postProcessData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V

    return-void
.end method

.method public getCapturedResolution(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getEventType()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "7.5"

    return-object p0
.end method

.method public getFlashMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "torch"

    return-object p0

    :cond_1
    const-string p0, "auto"

    return-object p0

    :cond_2
    const-string p0, "on"

    return-object p0

    :cond_3
    const-string p0, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcom/motorola/camera/analytics/LogEvent;->TAG:Ljava/lang/String;

    const-string p1, "Could not get flashMode from settings"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "NS"

    return-object p0
.end method

.method public getFocusMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 2

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode(I)Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FOCUS_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getHdrMode(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public final getSessionSeqId(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/Object;)J
    .locals 0

    check-cast p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;

    iget-object p0, p2, Lcom/motorola/camera/capturedmediadata/CapturedMediaData;->mCaptureRecord:Lcom/motorola/camera/fsm/camera/record/CaptureRecord;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string p1, "ANALYTICS_SEQID"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getZoomValue(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)I
    .locals 0

    iget-object p0, p1, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p1, p1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public abstract postProcessData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Lcom/motorola/camera/capturedmediadata/CapturedMediaData;)V
.end method
