.class public final Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;
.super Landroidx/collection/internal/Lock;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

.field public final synthetic val$visible:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;Z)V
    .locals 1

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Landroidx/collection/internal/Lock;-><init>(I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;->val$visible:Z

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 5

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;->val$visible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstCount:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAnimationStart()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
