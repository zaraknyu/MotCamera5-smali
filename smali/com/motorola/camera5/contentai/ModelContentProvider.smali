.class public final Lcom/motorola/camera5/contentai/ModelContentProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sModelCodeToHashMap:Ljava/util/HashMap;

.field public static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera5/contentai/ModelContentProvider;->sModelCodeToHashMap:Ljava/util/HashMap;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/motorola/camera5/contentai/ModelContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "gesture_auto_capture_model"

    const/4 v2, 0x1

    const-string v3, "com.motorola.camera5"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "gesture_auto_capture_tflite_model"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "gesture_auto_capture_tflite_model/*"

    const/16 v2, 0x1a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "scene_detection_model"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "scene_detection_tflite_model"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "mot_scene_detection_model/*"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "mot_scene_detection_model_v2/*"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "smile_detection_model"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "smile_detection_tflite_model"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "eye_contour_model"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "eye_contour_tflite_model"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "doc_scan_model"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "slide_scan_model"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;
    .locals 3

    new-instance v0, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "version"

    const-string v2, "hash"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    sget-object v1, Lcom/motorola/camera5/contentai/BuildConfig;->MOT_MODEL_HASH_MAP:Lcom/motorola/camera/IqConfigManager$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".model"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static query(Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 6

    const/16 v0, 0xca

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera5/contentai/ModelContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "2.2"

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    const-string v4, "ModelContentProvider"

    const/4 v5, 0x0

    if-eq v1, v2, :cond_7

    const/16 v2, 0xb

    if-eq v1, v2, :cond_6

    const/16 v2, 0xc

    if-eq v1, v2, :cond_5

    const/16 v2, 0xf

    if-eq v1, v2, :cond_4

    const/16 v2, 0x13

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_2

    const-string v0, "mot_scene_detection_model"

    packed-switch v1, :pswitch_data_0

    return-object v5

    :pswitch_0
    sget-object p0, Lcom/motorola/camera5/contentai/Version;->SMILE_DETECTION_TFLITE_VERSION_NAME:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->SMILE_DETECTION_TFLITE_VERSION_CODE:Ljava/lang/Integer;

    const-string/jumbo v1, "smile_detection_tflite_model"

    invoke-static {v1, p0, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/motorola/camera5/contentai/Version;->SMILE_DETECTION_VERSION_NAME:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->SMILE_DETECTION_VERSION_CODE:Ljava/lang/Integer;

    const-string/jumbo v1, "smile_detection_model"

    invoke-static {v1, p0, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera5/contentai/Version;->motSceneDetectionV2VariantToModelMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-static {v0, v1, p0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "No Mot Scene Detection V2 variant found returning null"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :pswitch_3
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/motorola/camera5/contentai/Version;->motSceneDetectionVariantToModelMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-static {v0, v1, p0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "No Mot Scene Detection variant found returning null"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :pswitch_4
    sget-object p0, Lcom/motorola/camera5/contentai/Version;->SCENE_DETECTION_TFLITE_VERSION_NAME:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->SCENE_DETECTION_TFLITE_VERSION_CODE:Ljava/lang/Integer;

    const-string/jumbo v1, "scene_detection_tflite_model"

    invoke-static {v1, p0, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/motorola/camera5/contentai/Version;->SCENE_DETECTION_TFLITE_VERSION_NAME:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->SCENE_DETECTION_VERSION_CODE:Ljava/lang/Integer;

    const-string/jumbo v1, "scene_detection_model"

    invoke-static {v1, p0, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_2
    move-object v1, v5

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/motorola/camera5/contentai/Version;->SLIDE_SCAN_VERSION_NAME:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->SLIDE_SCAN_VERSION_CODE:Ljava/lang/Integer;

    const-string/jumbo v1, "slide_scan_model"

    invoke-static {v1, p0, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Lcom/motorola/camera5/contentai/Version;->DOC_SCAN_VERSION_NAME:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->DOC_SCAN_VERSION_CODE:Ljava/lang/Integer;

    const-string v1, "doc_scan_model"

    invoke-static {v1, p0, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p0, Lcom/motorola/camera5/contentai/Version;->EYE_CONTOUR_TFLITE_VERSION_NAME:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->EYE_CONTOUR_TFLITE_VERSION_CODE:Ljava/lang/Integer;

    const-string v1, "eye_contour_tflite_model"

    invoke-static {v1, p0, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Lcom/motorola/camera5/contentai/Version;->EYE_CONTOUR_VERSION_NAME:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->EYE_CONTOUR_VERSION_CODE:Ljava/lang/Integer;

    const-string v1, "eye_contour_model"

    invoke-static {v1, p0, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v1, Lcom/motorola/camera5/contentai/ModelContentProvider;->sModelCodeToHashMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    if-nez v1, :cond_8

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    :cond_8
    sget-object p0, Lcom/motorola/camera5/contentai/Version;->gestureAutoCaptureTfliteVariantToModelMap:Ljava/util/HashMap;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    if-eqz p0, :cond_9

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    const-string v1, "gesture_auto_capture_tflite_model"

    invoke-static {v1, v0, p0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "No gesture capture tflite model found returning null"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_a
    sget-object p0, Lcom/motorola/camera5/contentai/Version;->gestureAutoCaptureTfliteVariantToModelMap:Ljava/util/HashMap;

    const-string p0, "gesture_auto_capture_model"

    invoke-static {p0, v3, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->buildVersionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final openAssetFile(Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    .locals 6

    const-string/jumbo v0, "r"

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/motorola/camera5/contentai/ModelContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "2.2"

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    const-string v3, "ModelContentProvider"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_7

    const/16 v1, 0xb

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const-string v1, "mot_scene_detection_model"

    packed-switch v0, :pswitch_data_0

    return-object v4

    :pswitch_0
    const-string/jumbo p1, "smile_detection_tflite_model"

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->SMILE_DETECTION_TFLITE_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string/jumbo p1, "smile_detection_model"

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->SMILE_DETECTION_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->motSceneDetectionV2VariantToModelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    filled-new-array {p1, v2, v4}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Mot Scene Detection v2 variant:%s,model: %s,version:%d"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "No Mot Scene Detection v2 variant found returning null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->motSceneDetectionVariantToModelMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    filled-new-array {p1, v2, v4}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Mot Scene Detection variant:%s,model: %s,version:%d"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "No Mot Scene Detection variant found returning null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_4
    const-string/jumbo p1, "scene_detection_tflite_model"

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->SCENE_DETECTION_TFLITE_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :pswitch_5
    const-string/jumbo p1, "scene_detection_model"

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->SCENE_DETECTION_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_2
    move-object v0, v4

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "slide_scan_model"

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->SLIDE_SCAN_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p1, "doc_scan_model"

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->DOC_SCAN_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p1, "eye_contour_tflite_model"

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->EYE_CONTOUR_TFLITE_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p1, "eye_contour_model"

    sget-object v0, Lcom/motorola/camera5/contentai/Version;->EYE_CONTOUR_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v0, Lcom/motorola/camera5/contentai/ModelContentProvider;->sModelCodeToHashMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    :cond_8
    sget-object p1, Lcom/motorola/camera5/contentai/Version;->gestureAutoCaptureTfliteVariantToModelMap:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    const/16 v5, 0xca

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    if-eqz p1, :cond_9

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Gesture Auto Capture variant:%s,model: %s,version:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "gesture_auto_capture_tflite_model"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, "No variant found returning null"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_a
    sget-object p1, Lcom/motorola/camera5/contentai/Version;->gestureAutoCaptureTfliteVariantToModelMap:Ljava/util/HashMap;

    const-string p1, "gesture_auto_capture_model"

    invoke-virtual {p0, p1, v2}, Lcom/motorola/camera5/contentai/ModelContentProvider;->openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "Failed to open "

    invoke-static {p1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final openAssetFileDescriptorForModel(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera5/contentai/ModelContentProvider;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".model"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p2, "Failed to open "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
