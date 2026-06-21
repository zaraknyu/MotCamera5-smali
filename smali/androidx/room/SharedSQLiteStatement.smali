.class public abstract Landroidx/room/SharedSQLiteStatement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final database:Ljava/lang/Object;

.field public final lock:Ljava/lang/Object;

.field public final stmt$delegate:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/room/SharedSQLiteStatement;->$r8$classId:I

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/SharedSQLiteStatement;->database:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/SharedSQLiteStatement;->lock:Ljava/lang/Object;

    .line 4
    new-instance p1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/SharedSQLiteStatement;->stmt$delegate:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/room/SharedSQLiteStatement;->$r8$classId:I

    iput-object p1, p0, Landroidx/room/SharedSQLiteStatement;->database:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/SharedSQLiteStatement;->lock:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/SharedSQLiteStatement;->stmt$delegate:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquire()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;
    .locals 3

    iget-object v0, p0, Landroidx/room/SharedSQLiteStatement;->database:Ljava/lang/Object;

    check-cast v0, Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    iget-object v0, p0, Landroidx/room/SharedSQLiteStatement;->lock:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/room/SharedSQLiteStatement;->stmt$delegate:Ljava/lang/Object;

    check-cast p0, Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/room/SharedSQLiteStatement;->createNewStatement()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object p0

    return-object p0
.end method

.method public createNewStatement()Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;
    .locals 1

    invoke-virtual {p0}, Landroidx/room/SharedSQLiteStatement;->createQuery()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/SharedSQLiteStatement;->database:Ljava/lang/Object;

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    move-result-object p0

    return-object p0
.end method

.method public abstract createQuery()Ljava/lang/String;
.end method

.method public abstract debugFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;
.end method

.method public dispatchCallbackSafely()V
    .locals 2

    iget-object v0, p0, Landroidx/room/SharedSQLiteStatement;->stmt$delegate:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;-><init>(Landroidx/room/SharedSQLiteStatement;)V

    iget-object p0, p0, Landroidx/room/SharedSQLiteStatement;->database:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public release(Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;)V
    .locals 1

    const-string/jumbo v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/SharedSQLiteStatement;->stmt$delegate:Ljava/lang/Object;

    check-cast v0, Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteStatement;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/room/SharedSQLiteStatement;->lock:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public abstract toByteArray(Ljava/lang/Object;)[B
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/room/SharedSQLiteStatement;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/room/SharedSQLiteStatement;->debugFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
