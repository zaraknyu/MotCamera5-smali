.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;
.source "SourceFile"


# static fields
.field public static final EPSILON_1:F


# instance fields
.field public mAction:I

.field public final mAnimFade:I

.field public final mAnimRotate:I

.field public final mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public mFadeAnimation:I

.field public final mHideRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

.field public final mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

.field public final mShowRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->EPSILON_1:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModesBaseComponent;Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V
    .locals 1

    const-string/jumbo v0, "renderer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V
    .locals 2

    const-string/jumbo v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    invoke-direct {v0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mPressedRes:I

    .line 4
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mUnpressedRes:I

    .line 5
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgRes:I

    .line 6
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mFgResPressed:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mMaxAlpha:F

    .line 8
    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mForceLoad:Z

    .line 9
    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 10
    invoke-direct {p3, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    .line 11
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    .line 12
    new-instance p3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    .line 13
    invoke-direct {p3, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;I)V

    .line 14
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mTextureFg:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I

    .line 16
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mShowRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    .line 17
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mHideRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    .line 18
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    const/4 p3, 0x2

    invoke-direct {p1, p0, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    .line 19
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    .line 20
    iget-object p1, v0, Landroidx/media3/common/BasePlayer;->window:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p3

    .line 22
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    .line 23
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 24
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimRotate:I

    .line 25
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    return-void
.end method


# virtual methods
.method public onPreDraw([F[F)V
    .locals 1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    const-string v0, "null cannot be cast to non-null type com.motorola.camera.ui.widgets.gl.ContinuouslyRenderingAnimationTracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationUpdate([F)Z

    monitor-enter p0

    :try_start_0
    monitor-enter p0

    monitor-exit p0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->cancelAnimation()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mShowRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->run()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mHideRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->run()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAction:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mRotateRunnable:Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method
