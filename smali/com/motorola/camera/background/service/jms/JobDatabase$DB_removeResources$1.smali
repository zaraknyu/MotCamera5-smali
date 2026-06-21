.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $key:J

.field public final synthetic $successful:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public label:I

.field public final synthetic this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;JLkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->label:I

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$key:J

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->this$0:Lcom/motorola/camera/background/service/jms/JobDatabase;

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, v6, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/SecureDataHelper;

    iput v5, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->label:I

    invoke-virtual {p1, v3, v4, p0}, Lcom/motorola/camera/SecureDataHelper;->selectById(JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lcom/motorola/camera/background/service/jms/db/Transaction;

    if-eqz p1, :cond_7

    invoke-virtual {v6, v3, v4}, Lcom/motorola/camera/background/service/jms/JobDatabase;->DB_updateMarkForDelete(J)V

    iget-object v1, v6, Lcom/motorola/camera/background/service/jms/JobDatabase;->context:Landroid/content/Context;

    iget-wide v7, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    invoke-static {v1, v7, v8}, Lcom/motorola/camera/background/provider/FileDataContract;->deleteTagData(Landroid/content/Context;J)I

    iget-object v1, v6, Lcom/motorola/camera/background/service/jms/JobDatabase;->mTransactionRepository:Lcom/motorola/camera/SecureDataHelper;

    iget-wide v7, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    iput v2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->label:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$deleteById$2;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v7, v8, v2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$deleteById$2;-><init>(Lcom/motorola/camera/SecureDataHelper;JLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    sget-object v2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {v2, p1, v1}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p1

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_3
    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    move v5, v0

    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$DB_removeResources$1;->$successful:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v5, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_7
    invoke-virtual {v6, v3, v4}, Lcom/motorola/camera/background/service/jms/JobDatabase;->jobExists(J)Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, v6, Lcom/motorola/camera/background/service/jms/JobDatabase;->mJobMap:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
