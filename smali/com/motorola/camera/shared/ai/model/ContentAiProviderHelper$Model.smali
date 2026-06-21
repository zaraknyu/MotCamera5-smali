.class public enum Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum MOT_SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION;

.field public static final enum MOT_SCENE_DETECTION_V2:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;

.field public static final enum SCENE_DETECTION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SCENE_DETECTION_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

.field public static final enum SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;


# instance fields
.field public final modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

.field public final modelName:Ljava/lang/String;

.field public final modelVersion:I

.field public final versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->GESTURE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const/16 v5, 0xc9

    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->GESTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;

    const-string v1, "GESTURE_AUTO_CAPTURE_MODEL"

    const/4 v2, 0x0

    const-string v4, "gesture_auto_capture_model"

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    new-instance v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$GESTURE_AUTO_CAPTURE_TFLITE_MODEL;

    invoke-direct {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$GESTURE_AUTO_CAPTURE_TFLITE_MODEL;-><init>()V

    new-instance v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;

    const-string v3, "SCENE_DETECTION_MODEL"

    const/4 v4, 0x2

    const-string/jumbo v6, "scene_detection_model"

    const/16 v7, 0x125

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SCENE_DETECTION_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    new-instance v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string/jumbo v7, "scene_detection_tflite_model"

    move-object v9, v8

    const/16 v8, 0x125

    const-string v4, "SCENE_DETECTION_TFLITE_MODEL"

    move-object v6, v5

    const/4 v5, 0x3

    invoke-direct/range {v3 .. v9}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SCENE_DETECTION_TFLITE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    new-instance v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION;

    invoke-direct {v4}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION;-><init>()V

    sput-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->MOT_SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION;

    new-instance v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;

    invoke-direct {v5}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;-><init>()V

    sput-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->MOT_SCENE_DETECTION_V2:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;

    new-instance v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SMILE_DETECTION;

    const-string v7, "SMILE_DETECTION_MODEL"

    const/4 v8, 0x6

    const-string/jumbo v10, "smile_detection_model"

    const/16 v11, 0x66

    invoke-direct/range {v6 .. v12}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    new-instance v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string/jumbo v11, "smile_detection_tflite_model"

    move-object v13, v12

    const/16 v12, 0x66

    const-string v8, "SMILE_DETECTION_TFLITE_MODEL"

    move-object v10, v9

    const/4 v9, 0x7

    invoke-direct/range {v7 .. v13}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    new-instance v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->EYE_CONTOUR:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    sget-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->CONTENT_BACKWARD_COMPATIBLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CONTENT_BACKWARD_COMPATIBLE;

    const-string v9, "EYE_CONTOUR_MODEL"

    const/16 v10, 0x8

    const-string v12, "eye_contour_model"

    const/16 v13, 0x67

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    new-instance v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    const-string v13, "eye_contour_tflite_model"

    move-object v15, v14

    const/16 v14, 0x67

    const-string v10, "EYE_CONTOUR_TFLITE_MODEL"

    move-object v12, v11

    const/16 v11, 0x9

    invoke-direct/range {v9 .. v15}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    new-instance v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const/16 v15, 0x66

    sget-object v16, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SCAN;

    const-string v11, "DOC_SCAN_MODEL"

    const/16 v12, 0xa

    const-string v14, "doc_scan_model"

    invoke-direct/range {v10 .. v16}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->DOC_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    new-instance v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v14, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const/16 v16, 0x64

    sget-object v17, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_SCAN;

    const-string v12, "SLIDE_SCAN_MODEL"

    const/16 v13, 0xb

    const-string/jumbo v15, "slide_scan_model"

    invoke-direct/range {v11 .. v17}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    sput-object v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->SLIDE_SCAN_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    filled-new-array/range {v0 .. v11}, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    iput-object p4, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelName:Ljava/lang/String;

    iput p5, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    iput-object p6, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    return-object v0
.end method


# virtual methods
.method public buildUri()Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->makeUriBuilder()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final makeUriBuilder()Landroid/net/Uri$Builder;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.motorola.camera5"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "appendPath(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public modelVersion()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    return p0
.end method
