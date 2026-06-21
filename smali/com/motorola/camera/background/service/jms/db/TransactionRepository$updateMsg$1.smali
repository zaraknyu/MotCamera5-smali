.class public final Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $callerId:I

.field public final synthetic $key:J

.field public final synthetic $msg:Ljava/lang/String;

.field public final synthetic $msgType:I

.field public final synthetic $returnCode:I

.field public final synthetic this$0:Lcom/motorola/camera/SecureDataHelper;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/SecureDataHelper;JIILjava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->this$0:Lcom/motorola/camera/SecureDataHelper;

    iput-wide p2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$key:J

    iput p4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$callerId:I

    iput p5, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msgType:I

    iput-object p6, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msg:Ljava/lang/String;

    iput p7, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$returnCode:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msg:Ljava/lang/String;

    iget v7, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$returnCode:I

    iget-object v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->this$0:Lcom/motorola/camera/SecureDataHelper;

    iget-wide v2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$key:J

    iget v4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$callerId:I

    iget v5, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msgType:I

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;-><init>(Lcom/motorola/camera/SecureDataHelper;JIILjava/lang/String;ILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->this$0:Lcom/motorola/camera/SecureDataHelper;

    iget-object p1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;

    iget v1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$callerId:I

    iget v2, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msgType:I

    iget v3, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$returnCode:I

    iget-wide v4, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$key:J

    iget-object v6, p0, Lcom/motorola/camera/background/service/jms/db/TransactionRepository$updateMsg$1;->$msg:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$$ExternalSyntheticLambda9;-><init>(IIIJLjava/lang/String;)V

    const/4 p0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p0, v1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
