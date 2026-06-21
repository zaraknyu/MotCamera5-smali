.class public final Lcom/motorola/camera/cli/onboard/CliOnboardVideoViewMode;
.super Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;
.source "SourceFile"


# instance fields
.field public final onboardList$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;-><init>(Z)V

    new-instance p1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/CliOnboardVideoViewMode;->onboardList$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/CliOnboardVideoViewMode;->onboardList$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;->showOnboard(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
