.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $id:J

.field public final synthetic $transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

.field public final synthetic this$0:Lcom/motorola/camera/SecureDataHelper;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/db/Transaction;JLcom/motorola/camera/SecureDataHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$id:J

    iput-object p4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->this$0:Lcom/motorola/camera/SecureDataHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$id:J

    iget-object v4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->this$0:Lcom/motorola/camera/SecureDataHelper;

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;-><init>(Lcom/motorola/camera/background/service/jms/db/Transaction;JLcom/motorola/camera/SecureDataHelper;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$id:J

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->$transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iput-wide v0, p1, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$insert$1;->this$0:Lcom/motorola/camera/SecureDataHelper;

    iget-object p0, p0, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl;Lcom/motorola/camera/background/service/jms/db/Transaction;I)V

    const/4 p0, 0x1

    invoke-static {v0, v2, p0, v1}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
