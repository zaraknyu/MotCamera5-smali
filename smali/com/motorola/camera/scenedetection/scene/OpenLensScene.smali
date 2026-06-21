.class public final Lcom/motorola/camera/scenedetection/scene/OpenLensScene;
.super Lcom/motorola/camera/scenedetection/scene/ActionScene;
.source "SourceFile"


# instance fields
.field public final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_IN:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v2, 0x7f120064

    invoke-direct {p0, v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/ActionScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final doAction(Lcom/motorola/camera/EventListener;)V
    .locals 2

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/utility/lens/LensApiHelper;->INSTANCE:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p1}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/OpenLensScene;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
