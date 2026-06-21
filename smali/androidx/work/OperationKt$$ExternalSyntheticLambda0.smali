.class public final synthetic Landroidx/work/OperationKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/Executor;

.field public final synthetic f$1:Landroidx/work/SystemClock;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$4:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroidx/work/SystemClock;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;->f$1:Landroidx/work/SystemClock;

    iput-object p3, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;->f$4:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 7

    new-instance v0, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;

    const/4 v6, 0x0

    iget-object v1, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;->f$1:Landroidx/work/SystemClock;

    iget-object v2, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;->f$4:Landroidx/lifecycle/MutableLiveData;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroidx/work/OperationKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/work/OperationKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
