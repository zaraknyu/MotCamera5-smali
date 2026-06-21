.class public final Lcom/motorola/camera/analytics/OneOffEvent;
.super Lcom/motorola/camera/analytics/LogEvent;
.source "SourceFile"


# static fields
.field public static final ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADJUSTED_EDGES:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final ADOBE_AUTO_CAPTURE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_CLEANUP_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_CROP_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_DIALOG_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_DISCARD_ACTION:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final ADOBE_DISCARD_TYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_FILTER_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_FULL_SCROLL_TOOLBAR:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final ADOBE_MARKUP_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_NUMBER_OF_PAGES:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_NUMBER_OF_RETAKES:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_OPEN_JPG_IN_GALLERY:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_OPEN_PDF_IN_ADOBE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_OPEN_PDF_IN_FILES:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_ROTATE_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ADOBE_SAVED_ON_ADOBE_APP:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final AI_COLOR_TONE_FOOD_COORDINATES:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final AI_COLOR_TONE_LANDSCAPE_COORDINATES:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final AI_COLOR_TONE_PORTRAIT_COORDINATES:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final EVTTME:Lcom/google/android/gms/common/internal/zzv;

.field public static final FACING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final FEEDBACK_POPUP:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final FILTER:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final GEO_AVAILABLE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final ISCOLDSTART:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final LAUNCHEDBY:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final NETWORK_SUBTYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final NETWORK_TYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final NUM_FIELDS:Lcom/google/android/gms/common/internal/zzv;

.field public static final OBJECT_TYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final PROBE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final QLNCH:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

.field public static final RAM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final RAMAVL:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final RAMPSREXP:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final RAMTHRS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

.field public static final ROTATED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final SCAN_DURATION:Lcom/google/android/gms/common/internal/zzv;

.field public static final SECURE_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

.field public static final STARTUP:Lcom/google/android/gms/common/internal/zzv;

.field public static final TIME_AT_DETECTION:Lcom/google/android/gms/common/internal/zzv;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "SCNTME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->SCAN_DURATION:Lcom/google/android/gms/common/internal/zzv;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "TYPE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->OBJECT_TYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ACTION"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "FLDS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->NUM_FIELDS:Lcom/google/android/gms/common/internal/zzv;

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "EVTTME"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->TIME_AT_DETECTION:Lcom/google/android/gms/common/internal/zzv;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "NETTYPE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->NETWORK_TYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "NETSUB"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->NETWORK_SUBTYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "GEO"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->GEO_AVAILABLE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "STARTUP"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->STARTUP:Lcom/google/android/gms/common/internal/zzv;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "COLD"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ISCOLDSTART:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "LAUNCHEDBY"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->LAUNCHEDBY:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "QLNCH"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->QLNCH:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/google/android/gms/common/internal/zzv;

    const-string v1, "evttme"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->EVTTME:Lcom/google/android/gms/common/internal/zzv;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "SECUREMODE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->SECURE_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "FACING"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->FACING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "RAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->RAM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "PROBE"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->PROBE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "RAMPSREXP"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->RAMPSREXP:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "RAMAVL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->RAMAVL:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "RAMTHRS"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->RAMTHRS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "AICTFOOD"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->AI_COLOR_TONE_FOOD_COORDINATES:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "AICTPORT"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->AI_COLOR_TONE_PORTRAIT_COORDINATES:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v1, "AICTLAND"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->AI_COLOR_TONE_LANDSCAPE_COORDINATES:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "FBPOPUP"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->FEEDBACK_POPUP:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "EDGES"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADJUSTED_EDGES:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ROTATED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "FILTER"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->FILTER:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "NUMPAGES"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_NUMBER_OF_PAGES:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "NUMRTAKE"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_NUMBER_OF_RETAKES:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "DGACTION"

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_DIALOG_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ADBCROP"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_CROP_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ADBROTAT"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_ROTATE_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ADBFILTR"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_FILTER_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ADBMARK"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_MARKUP_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ADBCLEAN"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/Object;ZI)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_CLEANUP_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "ADBDISC"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_DISCARD_ACTION:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ADBACPT"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_AUTO_CAPTURE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "ADBSCRLL"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_FULL_SCROLL_TOOLBAR:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ADBOPFL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_OPEN_PDF_IN_FILES:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ADBOPADB"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_OPEN_PDF_IN_ADOBE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ADBOJGAL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_OPEN_JPG_IN_GALLERY:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    new-instance v0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v1, "ADBSAVED"

    invoke-direct {v0, v1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_SAVED_ON_ADOBE_APP:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string v1, "ADBDTYP"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_DISCARD_TYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/analytics/OneOffEvent;->$r8$classId:I

    invoke-direct {p0}, Lcom/motorola/camera/analytics/LogEvent;-><init>()V

    return-void
.end method

.method public static setupSessionValues(Landroidx/sqlite/db/SimpleSQLiteQuery;)V
    .locals 10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAnyVideoMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Camera"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "Camcorder"

    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "SEQID"

    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCaptureIntent()Lcom/motorola/camera/settings/CaptureIntent;

    move-result-object v1

    iget-object v2, v1, Lcom/motorola/camera/settings/CaptureIntent;->mIntent:Landroid/content/Intent;

    const-string v3, "TRAY"

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    const-string v4, "motorola.camera.intent.extra.ANALYTICS_PROCESSED"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v3, "NOT_LAUNCH"

    goto/16 :goto_7

    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string v7, "android.intent.action.CAMERA_BUTTON"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v3, "BTN"

    goto/16 :goto_7

    :cond_4
    invoke-static {v4}, Lcom/motorola/camera/settings/CaptureIntent;->isPhotoCaptureAction(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "AOV"

    const-string v9, "motorola.intent.extra.CALLER"

    if-nez v7, :cond_8

    const-string v7, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "motorola.camera.intent.action.VIDEO_CAPTURE"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    sget v1, Lcom/motorola/camera/MediaControlReceiver;->$r8$clinit:I

    const-string v1, "motorola.camera.intent.action.TAKE_PICTURE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "motorola.camera.intent.action.TAKE_SELFIE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "motorola.camera.intent.action.SWITCH_CAMERA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_6
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "motorola.intent.category.QUICK_LAUNCH"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "moto-voice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_7
    :goto_2
    move-object v3, v8

    goto/16 :goto_7

    :cond_8
    :goto_3
    const-string v3, "com.android.systemui.camera_launch_source"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v2}, Lcom/motorola/camera/Util;->getIntentSource(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    const-string v3, "LOCK"

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/motorola/camera/settings/CaptureIntent;->isVoiceAssistantCapture()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/motorola/camera/settings/CaptureIntent;->isGoogleAssistantLaunch()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_2

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_5
    move v5, v4

    goto :goto_6

    :sswitch_0
    const-string/jumbo v1, "wiggle_gesture"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_5

    :cond_c
    const/4 v5, 0x2

    goto :goto_6

    :sswitch_1
    const-string v1, "flip_changed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    move v5, v6

    goto :goto_6

    :sswitch_2
    const-string/jumbo v1, "power_double_tap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_5

    :cond_e
    :goto_6
    packed-switch v5, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    const-string v3, "QUIK"

    goto :goto_7

    :pswitch_1
    const-string v3, "CLICAM"

    goto :goto_7

    :pswitch_2
    const-string v3, "DTPWR"

    :cond_f
    :goto_7
    const-string v1, "LNCH"

    invoke-virtual {p0, v1, v3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SERVICEMODE"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "USECASE"

    invoke-virtual {p0, v1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65d77e51 -> :sswitch_2
        -0x5611b31e -> :sswitch_1
        -0x179a9ecb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addData(Landroidx/sqlite/db/SimpleSQLiteQuery;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 7

    iget p0, p0, Lcom/motorola/camera/analytics/OneOffEvent;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "ANALYTICS_ADOBE_NUMBER_PAGES"

    const-string p3, "ANALYTICS_DOC_EDITOR_FILTER"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADJUSTED_EDGES:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v0, "ANALYTICS_DOC_EDITOR_EDGES"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ROTATED:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v0, "ANALYTICS_DOC_EDITOR_ROTATE"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->FILTER:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_NUMBER_OF_PAGES:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-static {p1, p0, p3, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_NUMBER_OF_RETAKES:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_NUMBER_RETAKES"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_DIALOG_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_DIALOG_ACTION"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_CROP_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_TOOLBAR_CROP"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_ROTATE_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_TOOLBAR_ROTATE"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_FILTER_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_TOOLBAR_FILTER"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_MARKUP_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_TOOLBAR_MARKUP"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_CLEANUP_ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_TOOLBAR_CLNUP"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_DISCARD_ACTION:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string p3, "ANALYTICS_ADOBE_DISCARD_ACTION"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_AUTO_CAPTURE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_AUTO_CAPTURE"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_FULL_SCROLL_TOOLBAR:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string p3, "ANALYTICS_ADOBE_FULL_SCROLL_TOOLBAR"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_SAVED_ON_ADOBE_APP:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string p3, "ANALYTICS_ADOBE_SAVED_ON_ADOBE_APP"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_DISCARD_TYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_DISCARD_TYPE"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_OPEN_PDF_IN_FILES:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_OPEN_PDF_FILES"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_OPEN_PDF_IN_ADOBE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_OPEN_PDF_ADOBE"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ADOBE_OPEN_JPG_IN_GALLERY:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_ADOBE_OPEN_JPG_GALLERY"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isKeyguardLocked()Z

    move-result p0

    const-string p3, "USECASE"

    const-string v0, "USECASE"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/motorola/camera/analytics/OneOffEvent;->STARTUP:Lcom/google/android/gms/common/internal/zzv;

    const-string v0, "STARTUP"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-ltz v2, :cond_2

    const-wide/32 v5, 0x493e0

    cmp-long v2, v0, v5

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v3

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/google/android/gms/common/internal/zzv;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    sget-object p3, Lcom/motorola/camera/analytics/OneOffEvent;->EVTTME:Lcom/google/android/gms/common/internal/zzv;

    const-string v0, "evttme"

    invoke-virtual {p1, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/google/android/gms/common/internal/zzv;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    sget-object p3, Lcom/motorola/camera/analytics/OneOffEvent;->ISCOLDSTART:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string v0, "COLD"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object p3, Lcom/motorola/camera/analytics/OneOffEvent;->LAUNCHEDBY:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string v0, "LAUNCHEDBY"

    const-string v2, "INITIALIZED"

    iget-object v5, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v5, [B

    monitor-enter v5

    :try_start_0
    iget-object v6, p1, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v6, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v0, p2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p3, Lcom/motorola/camera/analytics/OneOffEvent;->QLNCH:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/motorola/camera/settings/Setting;->getSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_4

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ON"

    goto :goto_2

    :cond_3
    const-string v0, "OFF"

    goto :goto_2

    :cond_4
    const-string v0, "NS"

    :goto_2
    invoke-virtual {p3, v0, p2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p3, Lcom/motorola/camera/analytics/OneOffEvent;->SECURE_MODE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    const-string p0, "SERVICEMODE"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string p3, "SERVICEMODE"

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->FACING:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-static {}, Lcom/motorola/camera/analytics/LogEvent;->getCurrentCameraIdForAnalytics()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->RAM:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    sget-object p3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {p3}, Lcom/motorola/camera/shared/Util;->getTotalRAMMiB(Landroid/content/Context;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->PROBE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    sget-object p3, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p3}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    move p3, v0

    goto :goto_3

    :cond_5
    const/4 p3, 0x2

    :goto_3
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v2

    xor-int/2addr v1, v2

    or-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->RAMPSREXP:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    const-string p3, "RAMPSREXP"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->RAMAVL:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "RAMAVL"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->RAMTHRS:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "RAMTHRS"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    const-string p0, "LNCH"

    invoke-virtual {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "NOT_LAUNCH"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "LNCH"

    invoke-virtual {p2, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p0, "COLD"

    invoke-virtual {p1, p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "STARTUP"

    invoke-virtual {p1, v3, v4, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putLong(JLjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    check-cast p3, Lcom/motorola/camera/analytics/AlwaysAwareData;

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->SCAN_DURATION:Lcom/google/android/gms/common/internal/zzv;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->scanTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/internal/zzv;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->OBJECT_TYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->mType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->ACTION:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->action:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->NUM_FIELDS:Lcom/google/android/gms/common/internal/zzv;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->totFields:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/internal/zzv;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->TIME_AT_DETECTION:Lcom/google/android/gms/common/internal/zzv;

    iget-wide v0, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->detectionTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/common/internal/zzv;->record(Landroid/os/Bundle;Ljava/lang/Long;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->NETWORK_TYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->NETWORK_SUBTYPE:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    iget p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->networkSubtype:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->record(Landroid/os/Bundle;Ljava/lang/Integer;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->GEO_AVAILABLE:Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;

    iget-boolean p1, p3, Lcom/motorola/camera/analytics/AlwaysAwareData;->geoAvailable:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->record(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    return-void

    :pswitch_2
    const-string/jumbo p0, "sessionValues"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->AI_COLOR_TONE_FOOD_COORDINATES:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string p3, "ANALYTICS_AI_COLOR_TONE_FOOD_COORDINATES"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->AI_COLOR_TONE_PORTRAIT_COORDINATES:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string p3, "ANALYTICS_AI_COLOR_TONE_PORTRAIT_COORDINATES"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->AI_COLOR_TONE_LANDSCAPE_COORDINATES:Lcom/motorola/camera/analytics/Attributes/StringAttribute;

    const-string p3, "ANALYTICS_AI_COLOR_TONE_LANDSCAPE_COORDINATES"

    invoke-virtual {p1, p3}, Landroidx/sqlite/db/SimpleSQLiteQuery;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/motorola/camera/analytics/Attributes/StringAttribute;->record(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object p0, Lcom/motorola/camera/analytics/OneOffEvent;->FEEDBACK_POPUP:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const-string p3, "ANALYTICS_FEEDBACK_POPUP_ACTION"

    invoke-static {p1, p3, p0, p2}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(Landroidx/sqlite/db/SimpleSQLiteQuery;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getEventType()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/analytics/OneOffEvent;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x8

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    :pswitch_2
    const/16 p0, 0x9

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getEventVersion()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/analytics/OneOffEvent;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "1.3"

    return-object p0

    :pswitch_0
    const-string p0, "2.7"

    return-object p0

    :pswitch_1
    const-string p0, "1.6"

    return-object p0

    :pswitch_2
    const-string p0, "1.1"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
