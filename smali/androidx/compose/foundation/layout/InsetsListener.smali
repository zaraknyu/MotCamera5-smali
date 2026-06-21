.class public final Landroidx/compose/foundation/layout/InsetsListener;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final composeInsets:Landroidx/compose/foundation/layout/WindowInsetsHolder;

.field public prepared:Z

.field public runningAnimation:Z

.field public savedInsets:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsetsHolder;)V
    .locals 2

    iget-boolean v0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->consumes:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsListener;->composeInsets:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    iput-object p2, p0, Landroidx/compose/foundation/layout/InsetsListener;->savedInsets:Landroidx/core/view/WindowInsetsCompat;

    iget-object p1, p0, Landroidx/compose/foundation/layout/InsetsListener;->composeInsets:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    iget-object v0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->imeAnimationTarget:Landroidx/compose/foundation/layout/ValueInsets;

    iget-object v1, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/foundation/layout/OffsetKt;->toInsetsValues(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/compose/foundation/layout/ValueInsets;->setValue$foundation_layout_release(Landroidx/compose/foundation/layout/InsetsValues;)V

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->prepared:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/InsetsListener;->runningAnimation:Z

    if-nez p0, :cond_1

    iget-object p0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->imeAnimationSource:Landroidx/compose/foundation/layout/ValueInsets;

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/OffsetKt;->toInsetsValues(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/layout/ValueInsets;->setValue$foundation_layout_release(Landroidx/compose/foundation/layout/InsetsValues;)V

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->update$default(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroidx/core/view/WindowInsetsCompat;)V

    :cond_1
    :goto_0
    iget-boolean p0, p1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->consumes:Z

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0

    :cond_2
    return-object p2
.end method

.method public final onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->prepared:Z

    iput-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->runningAnimation:Z

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->savedInsets:Landroidx/core/view/WindowInsetsCompat;

    iget-object p1, p1, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Lcom/google/android/gms/tasks/zza;

    iget-object p1, p1, Lcom/google/android/gms/tasks/zza;->zza:Ljava/lang/Object;

    check-cast p1, Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getDurationMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object p1, v0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    iget-object v1, p0, Landroidx/compose/foundation/layout/InsetsListener;->composeInsets:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    iget-object v2, v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->imeAnimationSource:Landroidx/compose/foundation/layout/ValueInsets;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/foundation/layout/OffsetKt;->toInsetsValues(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/foundation/layout/ValueInsets;->setValue$foundation_layout_release(Landroidx/compose/foundation/layout/InsetsValues;)V

    iget-object v2, v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->imeAnimationTarget:Landroidx/compose/foundation/layout/ValueInsets;

    invoke-virtual {p1, v3}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/foundation/layout/OffsetKt;->toInsetsValues(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/compose/foundation/layout/ValueInsets;->setValue$foundation_layout_release(Landroidx/compose/foundation/layout/InsetsValues;)V

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->update$default(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroidx/core/view/WindowInsetsCompat;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsListener;->savedInsets:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method public final onPrepare()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->prepared:Z

    iput-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->runningAnimation:Z

    return-void
.end method

.method public final onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsListener;->composeInsets:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->update$default(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroidx/core/view/WindowInsetsCompat;)V

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->consumes:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final onStart(Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/CameraKpi;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->prepared:Z

    return-object p1
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->prepared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->prepared:Z

    iput-boolean v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->runningAnimation:Z

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->savedInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/layout/InsetsListener;->composeInsets:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    iget-object v2, v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->imeAnimationSource:Landroidx/compose/foundation/layout/ValueInsets;

    const/16 v3, 0x8

    iget-object v4, v0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v4, v3}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/foundation/layout/OffsetKt;->toInsetsValues(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/layout/ValueInsets;->setValue$foundation_layout_release(Landroidx/compose/foundation/layout/InsetsValues;)V

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->update$default(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroidx/core/view/WindowInsetsCompat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/layout/InsetsListener;->savedInsets:Landroidx/core/view/WindowInsetsCompat;

    :cond_0
    return-void
.end method
