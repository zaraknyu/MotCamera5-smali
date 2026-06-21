.class public final Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;
.super Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;
.source "SourceFile"


# instance fields
.field public final deviceName:Ljava/lang/String;

.field public final modelVersionMap:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 9

    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const/16 v5, 0x1b5

    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;

    const-string v1, "MOT_SCENE_DETECTION_V2"

    const/4 v2, 0x5

    const-string v4, "mot_scene_detection_model_v2"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;-><init>(Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;Ljava/lang/String;ILcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;)V

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;->deviceName:Ljava/lang/String;

    const/16 p0, 0x1b5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lkotlin/Pair;

    const-string/jumbo v2, "zeekr"

    invoke-direct {v1, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    const-string v3, "lynkco"

    invoke-direct {v2, v3, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    const-string v4, "manaus"

    invoke-direct {v3, v4, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p0, 0x10e7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v4, Lkotlin/Pair;

    const-string v5, "avatrn"

    invoke-direct {v4, v5, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    const-string v6, "ctwo"

    invoke-direct {v5, v6, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lkotlin/Pair;

    const-string v7, "boston"

    invoke-direct {v6, v7, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lkotlin/Pair;

    const-string v8, "cusco"

    invoke-direct {v7, v8, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v7}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;->modelVersionMap:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final buildUri()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;->modelVersionMap:Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;->deviceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->makeUriBuilder()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    invoke-super {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->buildUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final modelVersion()I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;->modelVersionMap:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$MOT_SCENE_DETECTION_V2;->deviceName:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
