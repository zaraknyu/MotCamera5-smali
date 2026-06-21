.class public final Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public startTranslationY:I

.field public startY:I

.field public final tmpLocation:[I

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onPrepare()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x1

    aget v0, v1, v0

    iput v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startY:I

    return-void
.end method

.method public final onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    iget-object v1, v0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lcom/google/android/gms/tasks/zza;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget p2, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startTranslationY:I

    iget-object v0, v0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lcom/google/android/gms/tasks/zza;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IFI)I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-object p1
.end method

.method public final onStart(Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/CameraKpi;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startY:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startTranslationY:I

    int-to-float p0, v2

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-object p1
.end method
