.class public final Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# instance fields
.field public final mAnimations:Ljava/util/HashMap;

.field public final mCompat:Landroidx/media3/decoder/Buffer;

.field public mRORunningAnimations:Ljava/util/List;

.field public mTmpRunningAnimations:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/Buffer;)V
    .locals 1

    iget v0, p1, Landroidx/media3/decoder/Buffer;->flags:I

    invoke-direct {p0, v0}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mAnimations:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Landroidx/media3/decoder/Buffer;

    return-void
.end method


# virtual methods
.method public final getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;
    .locals 7

    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/tasks/zza;

    new-instance v2, Landroid/view/WindowInsetsAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/WindowInsetsAnimation;-><init>(ILandroid/view/animation/Interpolator;J)V

    const/16 v3, 0xc

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/tasks/zza;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lcom/google/android/gms/tasks/zza;

    new-instance v1, Lcom/google/android/gms/tasks/zza;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/tasks/zza;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lcom/google/android/gms/tasks/zza;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Landroidx/media3/decoder/Buffer;

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/decoder/Buffer;->onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V

    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mAnimations:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;

    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Landroidx/media3/decoder/Buffer;

    invoke-virtual {p0}, Landroidx/media3/decoder/Buffer;->onPrepare()V

    return-void
.end method

.method public final onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 4

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mTmpRunningAnimations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mTmpRunningAnimations:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mRORunningAnimations:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getFraction()F

    move-result v1

    iget-object v3, v2, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lcom/google/android/gms/tasks/zza;

    iget-object v3, v3, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v3, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v3, v1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    iget-object v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mTmpRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-static {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/View;Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    iget-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mRORunningAnimations:Ljava/util/List;

    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Landroidx/media3/decoder/Buffer;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/decoder/Buffer;->onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->getWindowInsetsAnimationCompat(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/WindowInsetsAnimationCompat;

    new-instance p1, Lcom/motorola/camera/CameraKpi;

    invoke-direct {p1, p2}, Lcom/motorola/camera/CameraKpi;-><init>(Landroid/view/WindowInsetsAnimation$Bounds;)V

    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30$ProxyCallback;->mCompat:Landroidx/media3/decoder/Buffer;

    invoke-virtual {p0, p1}, Landroidx/media3/decoder/Buffer;->onStart(Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/view/WindowInsetsAnimation$Bounds;

    iget-object p2, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast p2, Landroidx/core/graphics/Insets;

    invoke-virtual {p2}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p2

    iget-object p0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p0, Landroidx/core/graphics/Insets;

    invoke-virtual {p0}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    return-object p1
.end method
