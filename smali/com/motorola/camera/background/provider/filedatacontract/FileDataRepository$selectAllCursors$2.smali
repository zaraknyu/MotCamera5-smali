.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectAllCursors$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectAllCursors$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectAllCursors$2;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectAllCursors$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectAllCursors$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/Matrices;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectAllCursors$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectAllCursors$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectAllCursors$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataRepository$selectAllCursors$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/Matrices;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/Matrices;->mTypeMap:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;

    if-eqz p0, :cond_0

    sget-object p1, Landroidx/room/RoomSQLiteQuery;->queryPool:Ljava/util/TreeMap;

    const/4 p1, 0x0

    const-string v0, "SELECT * FROM fileData_table"

    invoke-static {p1, v0}, Landroidx/room/Room;->acquire(ILjava/lang/String;)Landroidx/room/RoomSQLiteQuery;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
