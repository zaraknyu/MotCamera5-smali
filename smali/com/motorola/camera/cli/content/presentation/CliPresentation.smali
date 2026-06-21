.class public final Lcom/motorola/camera/cli/content/presentation/CliPresentation;
.super Landroid/app/Presentation;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final contentDeque:Ljava/util/ArrayDeque;

.field public final eventListener:Lcom/motorola/camera/cli/CliEventListener;

.field public final onLastContentClosed:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

.field public orientation:I

.field public final presentationContainer$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final viewMap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;ILcom/motorola/camera/cli/CliEventListener;Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput p3, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->orientation:I

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    iput-object p5, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->onLastContentClosed:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    new-instance p1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 p2, 0xe

    invoke-direct {p1, p2, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->presentationContainer$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final hideContent(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onViewRemoved()V

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, p0, p3}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;-><init>(ZLandroid/view/View;Lcom/motorola/camera/cli/content/presentation/CliPresentation;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->onCreate$com$motorola$camera$arch$view$BasePresentation(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    const/16 p1, 0x1706

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onCreate$com$motorola$camera$arch$view$BasePresentation(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const p1, 0x7f0d003d

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->hideContent(IZZ)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->Companion:Landroidx/activity/contextaware/ContextAwareHelper;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/activity/contextaware/ContextAwareHelper;->getInstance(Landroid/content/Context;)Lcom/motorola/camera/cli/util/WakeLockHelper;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/cli/util/WakeLockHelper;->mMainWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method public final show()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    const-string v0, "Invalid display: "

    const-string v1, "CliPresentation"

    invoke-static {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
