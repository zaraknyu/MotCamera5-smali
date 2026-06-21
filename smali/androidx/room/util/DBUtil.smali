.class public abstract Landroidx/room/util/DBUtil;
.super Ljava/lang/Object;


# direct methods
.method public static final dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V
    .locals 4

    const-string v0, "connection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    const-string v1, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Lkotlin/collections/builders/ListBuilder;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    check-cast v1, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "room_fts_content_sync_"

    invoke-static {v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final getCoroutineContext(Landroidx/room/RoomDatabase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;
    .locals 3

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode$room_runtime_release()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "coroutineScope"

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    sget-object v0, Landroidx/room/TransactionElement;->Key:Landroidx/transition/Transition$1;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    iget-object p0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public static final performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 7

    const-string v0, "db"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    new-instance v1, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1;

    const/4 v3, 0x0

    move-object v2, p0

    move v6, p1

    move v5, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performBlocking$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;ZZ)V

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zztc;->runBlockingUninterruptible(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final performSuspending(Landroidx/work/impl/WorkDatabase_Impl;ZLandroidx/room/RoomDatabase$$ExternalSyntheticLambda0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    iget v1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;

    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-boolean p1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->Z$0:Z

    iget-object p2, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$1:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    iget-object p0, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$0:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode$room_runtime_release()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->isOpenInternal()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p3, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;

    invoke-direct {p3, p0, v3, p2, p1}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$lambda$1$$inlined$internalPerform$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;Z)V

    iput v6, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    invoke-virtual {p0, p1, p3, v0}, Landroidx/room/RoomDatabase;->useConnection$room_runtime_release(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    return-object p0

    :cond_6
    iput-object p0, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$0:Landroidx/work/impl/WorkDatabase_Impl;

    iput-object p2, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$1:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    iput-boolean p1, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->Z$0:Z

    iput v5, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    invoke-static {p0, v0}, Landroidx/room/util/DBUtil;->getCoroutineContext(Landroidx/room/RoomDatabase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    if-ne p3, v1, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1;

    invoke-direct {v2, p0, v3, p2, p1}, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$$inlined$compatCoroutineExecute$DBUtil__DBUtil_androidKt$1;-><init>(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;Z)V

    iput-object v3, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$0:Landroidx/work/impl/WorkDatabase_Impl;

    iput-object v3, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->L$1:Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    iput v4, v0, Landroidx/room/util/DBUtil__DBUtil_androidKt$performSuspending$1;->label:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_2
    return-object v1

    :cond_8
    return-object p0
.end method

.method public static final query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Z)Landroid/database/Cursor;
    .locals 4

    const-string v0, "db"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p2, :cond_8

    instance-of p1, p0, Landroid/database/AbstractWindowedCursor;

    if-eqz p1, :cond_8

    move-object p1, p0

    check-cast p1, Landroid/database/AbstractWindowedCursor;

    invoke-virtual {p1}, Landroid/database/AbstractCursor;->getCount()I

    move-result p2

    invoke-virtual {p1}, Landroid/database/AbstractWindowedCursor;->hasWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-ge p1, p2, :cond_8

    const-string p1, "c"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_3

    :cond_3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_3

    :cond_4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    aput-object v2, p2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_7
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-object p1

    :goto_4
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_8
    return-object p0
.end method
