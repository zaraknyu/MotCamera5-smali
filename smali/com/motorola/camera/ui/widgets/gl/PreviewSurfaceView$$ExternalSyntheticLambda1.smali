.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

.field public final synthetic f$1:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;Landroid/graphics/Point;I)V
    .locals 0

    .line 1
    const/4 p3, 0x0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Point;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;Landroid/graphics/Point;IB)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Point;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1, p0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/graphics/Point;)V

    monitor-enter v0

    :try_start_0
    new-instance p0, Lcom/motorola/camera/PreviewSize;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-direct {p0, v2}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceSplitChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Point;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    new-instance v2, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v2, p0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/graphics/Point;)V

    const/4 p0, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean p0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Point;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v1, p0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/graphics/Point;)V

    monitor-enter v0

    :try_start_2
    new-instance p0, Lcom/motorola/camera/PreviewSize;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-direct {p0, v2}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    iput-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->mComponents:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->doSurfaceOrientationChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
