.class public final Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory;
.super Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.source "SourceFile"


# static fields
.field public static final SUPPORTED_SCENES:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->BLUE_SKY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v1, 0x7f120052

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v1, 0x7f120055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PET_MOTION:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v1, 0x7f12005b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->PET_STILL:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v1, 0x7f12005d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    const v1, 0x7f12005c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v7}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory;->SUPPORTED_SCENES:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 2

    const-string/jumbo v0, "sceneType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory;->SUPPORTED_SCENES:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/scenedetection/factory/BlackSesameSceneFactory$BlackSesameScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;I)V

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;->getScene(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Z)Lcom/motorola/camera/scenedetection/scene/Scene;

    move-result-object p0

    return-object p0
.end method
