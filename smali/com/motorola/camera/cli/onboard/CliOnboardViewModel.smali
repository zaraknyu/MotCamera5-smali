.class public Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;
.super Lcom/motorola/camera/arch/view/BaseViewModel;
.source "SourceFile"


# instance fields
.field public callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

.field public final hasCliCutout:Z

.field public final onboardList$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->hasCliCutout:Z

    new-instance p1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/16 v0, 0xf

    invoke-direct {p1, v0, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->onboardList$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->callback:Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel;->onboardList$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/motorola/camera/cli/onboard/CliOnboardViewModel$CliOnboardCallback;->showOnboard(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
