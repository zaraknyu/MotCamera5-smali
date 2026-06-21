.class public abstract Lcom/motorola/camera5/contentai/Version;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOC_SCAN_VERSION_CODE:Ljava/lang/Integer;

.field public static final DOC_SCAN_VERSION_NAME:Ljava/lang/String;

.field public static final EYE_CONTOUR_TFLITE_VERSION_CODE:Ljava/lang/Integer;

.field public static final EYE_CONTOUR_TFLITE_VERSION_NAME:Ljava/lang/String;

.field public static final EYE_CONTOUR_VERSION_CODE:Ljava/lang/Integer;

.field public static final EYE_CONTOUR_VERSION_NAME:Ljava/lang/String;

.field public static final SCENE_DETECTION_TFLITE_VERSION_CODE:Ljava/lang/Integer;

.field public static final SCENE_DETECTION_TFLITE_VERSION_NAME:Ljava/lang/String;

.field public static final SCENE_DETECTION_VERSION_CODE:Ljava/lang/Integer;

.field public static final SCENE_DETECTION_VERSION_NAME:Ljava/lang/String;

.field public static final SLIDE_SCAN_VERSION_CODE:Ljava/lang/Integer;

.field public static final SLIDE_SCAN_VERSION_NAME:Ljava/lang/String;

.field public static final SMILE_DETECTION_TFLITE_VERSION_CODE:Ljava/lang/Integer;

.field public static final SMILE_DETECTION_TFLITE_VERSION_NAME:Ljava/lang/String;

.field public static final SMILE_DETECTION_VERSION_CODE:Ljava/lang/Integer;

.field public static final SMILE_DETECTION_VERSION_NAME:Ljava/lang/String;

.field public static final gestureAutoCaptureTfliteVariantToModelMap:Ljava/util/HashMap;

.field public static final motSceneDetectionV2VariantToModelMap:Ljava/util/HashMap;

.field public static final motSceneDetectionVariantToModelMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xca

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/camera5/contentai/Version;->gestureAutoCaptureTfliteVariantToModelMap:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    const/16 v3, 0xcb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "2.3"

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "fogos"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "fogo"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v5, "zeekr"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "lynkco"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/util/Pair;

    const-string v7, "2.2"

    invoke-direct {v2, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "7090b"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "f7ab8"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "2.93"

    sput-object v0, Lcom/motorola/camera5/contentai/Version;->SCENE_DETECTION_VERSION_NAME:Ljava/lang/String;

    const/16 v1, 0x125

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera5/contentai/Version;->SCENE_DETECTION_VERSION_CODE:Ljava/lang/Integer;

    sput-object v0, Lcom/motorola/camera5/contentai/Version;->SCENE_DETECTION_TFLITE_VERSION_NAME:Ljava/lang/String;

    sput-object v1, Lcom/motorola/camera5/contentai/Version;->SCENE_DETECTION_TFLITE_VERSION_CODE:Ljava/lang/Integer;

    const-string v0, "1.2"

    sput-object v0, Lcom/motorola/camera5/contentai/Version;->SMILE_DETECTION_VERSION_NAME:Ljava/lang/String;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera5/contentai/Version;->SMILE_DETECTION_VERSION_CODE:Ljava/lang/Integer;

    sput-object v0, Lcom/motorola/camera5/contentai/Version;->SMILE_DETECTION_TFLITE_VERSION_NAME:Ljava/lang/String;

    sput-object v1, Lcom/motorola/camera5/contentai/Version;->SMILE_DETECTION_TFLITE_VERSION_CODE:Ljava/lang/Integer;

    const-string v2, "1.3"

    sput-object v2, Lcom/motorola/camera5/contentai/Version;->EYE_CONTOUR_VERSION_NAME:Ljava/lang/String;

    const/16 v3, 0x67

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/motorola/camera5/contentai/Version;->EYE_CONTOUR_VERSION_CODE:Ljava/lang/Integer;

    sput-object v2, Lcom/motorola/camera5/contentai/Version;->EYE_CONTOUR_TFLITE_VERSION_NAME:Ljava/lang/String;

    sput-object v3, Lcom/motorola/camera5/contentai/Version;->EYE_CONTOUR_TFLITE_VERSION_CODE:Ljava/lang/Integer;

    sput-object v0, Lcom/motorola/camera5/contentai/Version;->DOC_SCAN_VERSION_NAME:Ljava/lang/String;

    sput-object v1, Lcom/motorola/camera5/contentai/Version;->DOC_SCAN_VERSION_CODE:Ljava/lang/Integer;

    const-string v0, "1.0"

    sput-object v0, Lcom/motorola/camera5/contentai/Version;->SLIDE_SCAN_VERSION_NAME:Ljava/lang/String;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera5/contentai/Version;->SLIDE_SCAN_VERSION_CODE:Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera5/contentai/Version;->motSceneDetectionVariantToModelMap:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x12e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "59c80"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera5/contentai/Version;->motSceneDetectionV2VariantToModelMap:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x1b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "994ef"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "manaus"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x10e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "8c8a2"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "cusco"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "boston"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "ctwo"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "avatrn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
