.class public Landroidx/media3/ui/PlayerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final adOverlayFrameLayout:Landroid/widget/FrameLayout;

.field public artworkDisplayMode:I

.field public final artworkView:Landroid/widget/ImageView;

.field public final bufferingView:Landroid/view/View;

.field public final componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

.field public final contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

.field public final controller:Landroidx/media3/ui/PlayerControlView;

.field public controllerAutoShow:Z

.field public controllerHideDuringAds:Z

.field public controllerHideOnTouch:Z

.field public controllerShowTimeoutMs:I

.field public customErrorMessage:Ljava/lang/CharSequence;

.field public defaultArtwork:Landroid/graphics/drawable/Drawable;

.field public enableComposeSurfaceSyncWorkaround:Z

.field public final errorMessageView:Landroid/widget/TextView;

.field public final exoPlayerClazz:Ljava/lang/Class;

.field public imageDisplayMode:I

.field public final imageOutput:Ljava/lang/Object;

.field public final imageView:Landroid/widget/ImageView;

.field public keepContentOnPlayerReset:Z

.field public legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

.field public final mainLooperHandler:Landroid/os/Handler;

.field public final overlayFrameLayout:Landroid/widget/FrameLayout;

.field public player:Landroidx/media3/common/Player;

.field public final setImageOutputMethod:Ljava/lang/reflect/Method;

.field public showBuffering:I

.field public final shutterView:Landroid/view/View;

.field public final subtitleView:Landroidx/media3/ui/SubtitleView;

.field public final surfaceSyncGroupV34:Lcom/google/android/gms/tasks/zzs;

.field public final surfaceView:Landroid/view/View;

.field public final surfaceViewIgnoresVideoAspectRatio:Z

.field public useController:Z


# direct methods
.method public static $r8$lambda$LV2d0rIanLI_hEb4XhvJMfhVggk(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->setImage(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hasSelectedVideoTrack()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateImageViewAspectRatio()V

    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-direct {v4, v0}, Landroidx/media3/ui/PlayerView$ComponentListener;-><init>(Landroidx/media3/ui/PlayerView;)V

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v0, Landroidx/media3/ui/PlayerView;->mainLooperHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    iput-boolean v3, v0, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->surfaceSyncGroupV34:Lcom/google/android/gms/tasks/zzs;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    iput-object v6, v0, Landroidx/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    const v5, 0x7f080121

    const v7, 0x7f0600b6

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 v7, 0x3

    const/4 v8, 0x1

    const v9, 0x7f0d0066

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    sget-object v12, Landroidx/media3/ui/R$styleable;->PlayerView:[I

    invoke-virtual {v11, v2, v12, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0x2a

    :try_start_0
    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    invoke-virtual {v11, v12, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    const/16 v14, 0x16

    invoke-virtual {v11, v14, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/16 v14, 0x31

    invoke-virtual {v11, v14, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    invoke-virtual {v11, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    const/16 v6, 0x9

    invoke-virtual {v11, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/16 v7, 0xf

    invoke-virtual {v11, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/16 v5, 0x32

    invoke-virtual {v11, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v10, 0x2d

    invoke-virtual {v11, v10, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v8, 0x1c

    invoke-virtual {v11, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/16 v3, 0x26

    move/from16 v17, v5

    const/16 v5, 0x1388

    invoke-virtual {v11, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/16 v5, 0xe

    move/from16 v16, v3

    const/4 v3, 0x1

    invoke-virtual {v11, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move/from16 v18, v5

    const/4 v5, 0x4

    invoke-virtual {v11, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    const/16 v3, 0x23

    const/4 v5, 0x0

    invoke-virtual {v11, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iget-boolean v5, v0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    move/from16 v20, v3

    const/16 v3, 0x10

    invoke-virtual {v11, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    const/16 v3, 0xd

    const/4 v5, 0x1

    invoke-virtual {v11, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    move v11, v9

    move/from16 v5, v19

    move v9, v7

    move/from16 v19, v13

    move/from16 v7, v20

    move v13, v12

    move v12, v10

    move v10, v8

    move v8, v6

    move v6, v3

    move/from16 v3, v18

    move/from16 v18, v15

    move v15, v14

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_2
    const/16 v5, 0x1388

    move/from16 v16, v5

    move v11, v9

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    invoke-virtual {v14, v11, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v11, 0x40000

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const v11, 0x7f0a017d

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v11, v0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v11, :cond_3

    invoke-virtual {v11, v10}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    :cond_3
    const v10, 0x7f0a019f

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz v10, :cond_4

    if-eqz v19, :cond_4

    invoke-virtual {v10, v13}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    const/4 v13, 0x2

    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v14, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eq v12, v13, :cond_8

    const-class v10, Landroid/content/Context;

    const/4 v13, 0x3

    if-eq v12, v13, :cond_7

    const/4 v13, 0x4

    if-eq v12, v13, :cond_6

    new-instance v10, Landroid/view/SurfaceView;

    invoke-direct {v10, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    sget v12, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v13, 0x22

    if-lt v12, v13, :cond_5

    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Landroid/view/SurfaceView;->setSurfaceLifecycle(I)V

    :cond_5
    iput-object v10, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    goto :goto_2

    :cond_6
    :try_start_1
    const-class v12, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;

    sget v13, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->$r8$clinit:I

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iput-object v10, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :try_start_2
    const-class v12, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    sget v13, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->$r8$clinit:I

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iput-object v10, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v10, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "spherical_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    new-instance v10, Landroid/view/TextureView;

    invoke-direct {v10, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    :goto_2
    const/4 v10, 0x0

    :goto_3
    iget-object v12, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v12, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    invoke-virtual {v11, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/4 v10, 0x0

    :goto_4
    iput-boolean v10, v0, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v13, 0x22

    if-ne v4, v13, :cond_a

    new-instance v4, Lcom/google/android/gms/tasks/zzs;

    const/16 v10, 0x13

    invoke-direct {v4, v10}, Lcom/google/android/gms/tasks/zzs;-><init>(I)V

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->surfaceSyncGroupV34:Lcom/google/android/gms/tasks/zzs;

    const v4, 0x7f0a0175

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    const v4, 0x7f0a0190

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    const v4, 0x7f0a0189

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    iput v9, v0, Landroidx/media3/ui/PlayerView;->imageDisplayMode:I

    :try_start_3
    const-class v4, Landroidx/media3/exoplayer/ExoPlayer;

    const-class v9, Landroidx/media3/exoplayer/image/ImageOutput;

    const-string/jumbo v10, "setImageOutput"

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    new-instance v12, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda0;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v13, 0x0

    :try_start_4
    invoke-direct {v12, v13, v0}, Landroidx/media3/ui/PlayerView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {v11, v9, v12}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_2
    const/4 v13, 0x0

    :catch_3
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_6
    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    iput-object v10, v0, Landroidx/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    iput-object v9, v0, Landroidx/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    const v4, 0x7f0a0176

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v15, :cond_b

    if-eqz v18, :cond_b

    if-eqz v4, :cond_b

    move/from16 v4, v18

    goto :goto_7

    :cond_b
    move v4, v13

    :goto_7
    iput v4, v0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz v8, :cond_c

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    :cond_c
    const v4, 0x7f0a01a2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/media3/ui/SubtitleView;

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->setUserDefaultStyle()V

    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->setUserDefaultTextSize()V

    :cond_d
    const v4, 0x7f0a017a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    const/16 v8, 0x8

    if-eqz v4, :cond_e

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iput v7, v0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    const v4, 0x7f0a0182

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v4, :cond_f

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    const v4, 0x7f0a017e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/media3/ui/PlayerControlView;

    const v8, 0x7f0a017f

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v7, :cond_10

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    goto :goto_8

    :cond_10
    if-eqz v8, :cond_11

    new-instance v7, Landroidx/media3/ui/PlayerControlView;

    invoke-direct {v7, v1, v2}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v7, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_8

    :cond_11
    const/4 v4, 0x0

    iput-object v4, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    :goto_8
    iget-object v1, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v1, :cond_12

    move/from16 v2, v16

    goto :goto_9

    :cond_12
    move v2, v13

    :goto_9
    iput v2, v0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    iput-boolean v3, v0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    iput-boolean v5, v0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    iput-boolean v6, v0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v17, :cond_13

    if-eqz v1, :cond_13

    const/4 v3, 0x1

    goto :goto_a

    :cond_13
    move v3, v13

    :goto_a
    iput-boolean v3, v0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-eqz v1, :cond_16

    iget-object v1, v1, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget v2, v1, Landroidx/media3/ui/PlayerControlViewLayoutManager;->uxState:I

    const/4 v13, 0x3

    if-eq v2, v13, :cond_15

    const/4 v12, 0x2

    if-ne v2, v12, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->removeHideCallbacks()V

    invoke-virtual {v1, v12}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    :cond_15
    :goto_b
    iget-object v1, v0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    iget-object v2, v0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz v17, :cond_17

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    :cond_17
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateImageViewAspectRatio()V

    return-void
.end method

.method private setImageOutput(Landroidx/media3/common/Player;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->surfaceSyncGroupV34:Lcom/google/android/gms/tasks/zzs;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->enableComposeSurfaceSyncWorkaround:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast p0, Landroid/window/SurfaceSyncGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    return v3

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, p1}, Landroidx/media3/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    return v3

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    :cond_6
    return v2
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/tasks/zzad;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/gms/tasks/zzad;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/google/android/gms/tasks/zzad;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/tasks/zzad;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 1

    const-string v0, "exo_ad_overlay must be present for ad playback"

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->adOverlayFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getArtworkDisplayMode()I
    .locals 0

    iget p0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    return p0
.end method

.method public getControllerAutoShow()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    return p0
.end method

.method public getControllerHideOnTouch()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    return p0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 0

    iget p0, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    return p0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getImageDisplayMode()I
    .locals 0

    iget p0, p0, Landroidx/media3/ui/PlayerView;->imageDisplayMode:I

    return p0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->overlayFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    return-object p0
.end method

.method public getResizeMode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result p0

    return p0
.end method

.method public getSubtitleView()Landroidx/media3/ui/SubtitleView;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    return-object p0
.end method

.method public getUseArtwork()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getUseController()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    return p0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    return-object p0
.end method

.method public final hasSelectedImageTrack()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->imageOutput:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    move-object v1, v0

    check-cast v1, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v1, p0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasSelectedVideoTrack()Z
    .locals 2

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz p0, :cond_0

    const/16 v0, 0x1e

    move-object v1, p0

    check-cast v1, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v1, v0}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hideAndClearImage()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    if-eqz p0, :cond_1

    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public final isPlayingAd()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    check-cast v0, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v0, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final maybeShowController(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerView;->showController(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final performClick()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->toggleControllerVisibility()V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setArtworkDisplayMode(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget v1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_2
    return-void
.end method

.method public setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V

    return-void
.end method

.method public setControllerAnimationEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setAnimationEnabled(Z)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideDuringAds:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iput p1, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->shouldShowControllerIndefinitely()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->showController(Z)V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroidx/media3/ui/PlayerControlView;->visibilityListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->legacyControllerVisibilityListener:Landroidx/media3/ui/PlayerControlView$VisibilityListener;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setControllerVisibilityListener(Landroidx/media3/ui/PlayerView$ControllerVisibilityListener;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Landroidx/media3/ui/PlayerControlView$VisibilityListener;)V

    :cond_0
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_0
    return-void
.end method

.method public final setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v2, :cond_2

    if-lez v3, :cond_2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget v4, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public setEnableComposeSurfaceSyncWorkaround(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->enableComposeSurfaceSyncWorkaround:Z

    return-void
.end method

.method public setErrorMessageProvider(Landroidx/media3/common/ErrorMessageProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/ErrorMessageProvider;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    :cond_0
    return-void
.end method

.method public setFullscreenButtonClickListener(Landroidx/media3/ui/PlayerView$FullscreenButtonClickListener;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p1}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    invoke-virtual {p1, p0}, Landroidx/media3/ui/PlayerControlView;->setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V

    return-void
.end method

.method public setFullscreenButtonState(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->updateIsFullscreen(Z)V

    return-void
.end method

.method public setImageDisplayMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget v0, p0, Landroidx/media3/ui/PlayerView;->imageDisplayMode:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/media3/ui/PlayerView;->imageDisplayMode:I

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateImageViewAspectRatio()V

    :cond_1
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    :cond_0
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 10

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-ne v0, p1, :cond_3

    goto/16 :goto_c

    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    const/16 v4, 0x1b

    iget-object v5, p0, Landroidx/media3/ui/PlayerView;->componentListener:Landroidx/media3/ui/PlayerView$ComponentListener;

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    move-object v7, v0

    check-cast v7, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v7, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeListener(Landroidx/media3/common/Player$Listener;)V

    move-object v8, v0

    check-cast v8, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v8, v4}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v8

    if-eqz v8, :cond_6

    instance-of v8, v1, Landroid/view/TextureView;

    if-eqz v8, :cond_4

    move-object v8, v1

    check-cast v8, Landroid/view/TextureView;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz v8, :cond_6

    iget-object v9, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-ne v8, v9, :cond_6

    invoke-virtual {v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_4

    :cond_4
    instance-of v8, v1, Landroid/view/SurfaceView;

    if-eqz v8, :cond_6

    move-object v8, v1

    check-cast v8, Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez v8, :cond_5

    move-object v8, v6

    goto :goto_3

    :cond_5
    invoke-virtual {v8}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    :goto_3
    invoke-virtual {v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz v8, :cond_6

    iget-object v9, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne v8, v9, :cond_6

    invoke-virtual {v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    :cond_6
    :goto_4
    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->exoPlayerClazz:Ljava/lang/Class;

    if-eqz v7, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    :try_start_0
    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->setImageOutputMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    :goto_5
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->subtitleView:Landroidx/media3/ui/SubtitleView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v6}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_8
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v7

    iget-object v8, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v7, :cond_9

    invoke-virtual {v8, p1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    :cond_9
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateErrorMessage()V

    invoke-virtual {p0, v2}, Landroidx/media3/ui/PlayerView;->updateForCurrentTrackSelections(Z)V

    if-eqz p1, :cond_1b

    move-object v7, p1

    check-cast v7, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v7, v4}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_19

    instance-of v4, v1, Landroid/view/TextureView;

    if-eqz v4, :cond_e

    check-cast v1, Landroid/view/TextureView;

    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez v1, :cond_a

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    goto/16 :goto_8

    :cond_a
    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    iput-object v1, v2, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v4, "ExoPlayerImpl"

    const-string v8, "Replacing existing SurfaceTextureListener."

    invoke-static {v4, v8}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v4, v2, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    goto :goto_6

    :cond_c
    move-object v4, v6

    :goto_6
    if-nez v4, :cond_d

    invoke-virtual {v2, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto/16 :goto_8

    :cond_d
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v2, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    iput-object v6, v2, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto/16 :goto_8

    :cond_e
    instance-of v4, v1, Landroid/view/SurfaceView;

    if-eqz v4, :cond_14

    check-cast v1, Landroid/view/SurfaceView;

    move-object v4, p1

    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v8, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    instance-of v9, v1, Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;

    if-eqz v9, :cond_f

    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto/16 :goto_8

    :cond_f
    instance-of v9, v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    if-eqz v9, :cond_10

    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    move-object v6, v1

    check-cast v6, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iput-object v6, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v6, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-virtual {v4, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v6

    iget-boolean v9, v6, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/2addr v2, v9

    invoke-static {v2}, Landroidx/media3/common/util/Log;->checkState(Z)V

    const/16 v2, 0x2710

    iput v2, v6, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    iget-object v2, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v6, v2}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/media3/exoplayer/PlayerMessage;->send()V

    iget-object v2, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v2, v2, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->videoSurfaceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_8

    :cond_10
    if-nez v1, :cond_11

    move-object v1, v6

    goto :goto_7

    :cond_11
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    :goto_7
    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez v1, :cond_12

    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_8

    :cond_12
    invoke-virtual {v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    iput-boolean v2, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    iput-object v1, v4, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v8}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_8

    :cond_13
    invoke-virtual {v4, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    :cond_14
    :goto_8
    const/16 v1, 0x1e

    invoke-virtual {v7, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    move v4, v2

    :goto_9
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v4, v6, :cond_17

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/Tracks$Group;

    iget-object v6, v6, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v6, v6, Landroidx/media3/common/TrackGroup;->type:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_16

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/Tracks$Group;

    move v8, v2

    :goto_a
    iget-object v9, v6, Landroidx/media3/common/Tracks$Group;->trackSupport:[I

    array-length v9, v9

    if-ge v8, v9, :cond_16

    invoke-virtual {v6, v8}, Landroidx/media3/common/Tracks$Group;->isTrackSupported(I)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v2, 0x1

    goto :goto_b

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_17
    :goto_b
    if-eqz v2, :cond_19

    :cond_18
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateAspectRatio()V

    :cond_19
    if-eqz v0, :cond_1a

    const/16 v1, 0x1c

    invoke-virtual {v7, v1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    iget-object v1, v1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_1a
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->setImageOutput(Landroidx/media3/common/Player;)V

    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    return-void

    :cond_1b
    if-eqz v8, :cond_1c

    invoke-virtual {v8}, Landroidx/media3/ui/PlayerControlView;->hide()V

    :cond_1c
    :goto_c
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateBuffering()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowPlayButtonIfPlaybackIsSuppressed(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowSubtitleButton(Z)V

    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowVrButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setArtworkDisplayMode(I)V

    return-void
.end method

.method public setUseController(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz p1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/Log;->checkState(Z)V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    invoke-virtual {v2, p1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroidx/media3/ui/PlayerControlView;->hide()V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroidx/media3/ui/PlayerControlView;->setPlayer(Landroidx/media3/common/Player;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateContentDescription()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->surfaceView:Landroid/view/View;

    instance-of v0, p0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final shouldShowControllerIndefinitely()Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->controllerAutoShow:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/16 v3, 0x11

    check-cast v2, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v2, v3}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    check-cast v2, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final showController(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/media3/ui/PlayerView;->controllerShowTimeoutMs:I

    :goto_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setShowTimeoutMs(I)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->controlViewLayoutManager:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroidx/media3/ui/PlayerControlView;->updateAll()V

    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView;->playPauseButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBars()V

    return-void
.end method

.method public final toggleControllerVisibility()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->useController()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->maybeShowController(Z)V

    return-void

    :cond_1
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->hide()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateAspectRatio()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    :goto_0
    iget v1, v0, Landroidx/media3/common/VideoSize;->width:I

    iget v2, v0, Landroidx/media3/common/VideoSize;->height:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    iget v0, v0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    mul-float/2addr v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->surfaceViewIgnoresVideoAspectRatio:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v3}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_4
    return-void
.end method

.method public final updateBuffering()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->bufferingView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget v1, p0, Landroidx/media3/ui/PlayerView;->showBuffering:I

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final updateContentDescription()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/ui/PlayerView;->controllerHideOnTouch:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateErrorMessage()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->errorMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->customErrorMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    if-eqz p0, :cond_1

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    :cond_1
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final updateForCurrentTrackSelections(Z)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->player:Landroidx/media3/common/Player;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v3, 0x1e

    move-object v4, v0

    check-cast v4, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v4, v3}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Tracks;->groups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-boolean v4, p0, Landroidx/media3/ui/PlayerView;->keepContentOnPlayerReset:Z

    const v5, 0x106000d

    const/4 v6, 0x4

    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->artworkView:Landroid/widget/ImageView;

    iget-object v8, p0, Landroidx/media3/ui/PlayerView;->shutterView:Landroid/view/View;

    if-nez v4, :cond_4

    if-eqz v3, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hideAndClearImage()V

    :cond_4
    if-nez v3, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hasSelectedVideoTrack()Z

    move-result p1

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hasSelectedImageTrack()Z

    move-result v3

    if-nez p1, :cond_7

    if-nez v3, :cond_7

    if-eqz v8, :cond_6

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hideAndClearImage()V

    :cond_7
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v6, :cond_9

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    move v1, v2

    :goto_2
    if-eqz v3, :cond_b

    if-nez p1, :cond_b

    if-eqz v1, :cond_b

    if-eqz v8, :cond_a

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    if-eqz v4, :cond_c

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->updateImageViewAspectRatio()V

    goto :goto_3

    :cond_b
    if-eqz p1, :cond_c

    if-nez v3, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->hideAndClearImage()V

    :cond_c
    :goto_3
    if-nez p1, :cond_11

    if-nez v3, :cond_11

    iget p1, p0, Landroidx/media3/ui/PlayerView;->artworkDisplayMode:I

    if-eqz p1, :cond_11

    invoke-static {v7}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    if-eqz v0, :cond_f

    const/16 p1, 0x12

    move-object v1, v0

    check-cast v1, Landroidx/media3/common/BasePlayer;

    invoke-virtual {v1, p1}, Landroidx/media3/common/BasePlayer;->isCommandAvailable(I)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object p1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez p1, :cond_e

    goto :goto_4

    :cond_e
    array-length v0, p1

    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    :cond_f
    :goto_4
    if-eqz v2, :cond_10

    goto :goto_5

    :cond_10
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->defaultArtwork:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setDrawableArtwork(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_5

    :cond_11
    if-eqz v7, :cond_12

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    :goto_5
    return-void
.end method

.method public final updateImageViewAspectRatio()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v2, :cond_5

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget v3, p0, Landroidx/media3/ui/PlayerView;->imageDisplayMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->contentFrame:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final useController()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->useController:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->controller:Landroidx/media3/ui/PlayerControlView;

    invoke-static {p0}, Landroidx/media3/common/util/Log;->checkStateNotNull(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
