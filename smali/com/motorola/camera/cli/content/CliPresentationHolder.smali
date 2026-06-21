.class public final Lcom/motorola/camera/cli/content/CliPresentationHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final context:Ljava/lang/Object;

.field public final eventListener:Ljava/lang/Object;

.field public isInitialized:Z

.field public final mainHandler:Ljava/lang/Object;

.field public orientation:I

.field public final presentationDeque:Ljava/lang/Object;

.field public viewModel:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/cli/content/CliContentManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->eventListener:Ljava/lang/Object;

    .line 4
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->mainHandler:Ljava/lang/Object;

    .line 5
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    .line 7
    iput p3, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->orientation:I

    .line 8
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->eventListener:Ljava/lang/Object;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->mainHandler:Ljava/lang/Object;

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    .line 11
    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->viewModel:Ljava/lang/Object;

    return-void
.end method

.method public static final access$changeOrientation(Lcom/motorola/camera/cli/content/CliPresentationHolder;I)V
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "iterator(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/shared/OrientationEvent;->getCliDisplayRotation(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result v2

    sub-int v2, p1, v2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->orientation:I

    iget-object v2, v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;

    if-eqz v3, :cond_1

    iget v4, v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->orientation:I

    iput v4, v3, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->orientation:I

    invoke-virtual {v3}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onOrientationChanged()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->isInitialized:Z

    iget-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->eventListener:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x101009e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->isInitialized:Z

    if-eqz v1, :cond_0

    const v1, 0x10100a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    return-void
.end method
