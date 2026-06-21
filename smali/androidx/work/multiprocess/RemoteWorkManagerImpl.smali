.class public final Landroidx/work/multiprocess/RemoteWorkManagerImpl;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroidx/work/multiprocess/IWorkManagerImpl;


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final sEMPTY:[B


# instance fields
.field public final mWorkManager:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->sEMPTY:[B

    return-void
.end method

.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImpl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 4

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object v0, v0, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    const-string v1, "CancelWorkByName_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v2, Landroidx/room/TransactionExecutor;

    const-string/jumbo v3, "workManagerImpl.workTask\u2026ecutor.serialTaskExecutor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;

    invoke-direct {v3, p1, p0}, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;-><init>(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)V

    invoke-static {v0, v1, v2, v3}, Landroidx/work/OperationKt;->launchOperation(Landroidx/work/SystemClock;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/Data$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p0, Landroidx/room/TransactionExecutor;

    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    iget-object p1, p1, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final enqueueContinuation([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 6

    :try_start_0
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/work/impl/WorkContinuationImpl;

    iget-object v2, p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->mName:Ljava/lang/String;

    iget v3, p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->mWorkPolicy:I

    iget-object v4, p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->mRequests:Ljava/util/List;

    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->mParents:Ljava/util/List;

    invoke-static {v1, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$WorkContinuationImplInfo;->parents(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/Data$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p0, Landroidx/room/TransactionExecutor;

    new-instance v0, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    iget-object p1, p1, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, p1, v1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImpl;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    const-string/jumbo v0, "workManagerImpl.workTask\u2026ecutor.serialTaskExecutor"

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_0
    sget-object p3, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p3}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;

    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p4, p3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p4, Landroidx/room/TransactionExecutor;

    new-instance v0, Landroidx/work/impl/utils/WorkForegroundUpdater;

    iget-object v2, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v3, p0, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    invoke-direct {v0, v2, v3, p3}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/transition/TransitionValuesMaps;)V

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Landroidx/work/ForegroundInfo;

    iget-object p3, p3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p3, Landroidx/room/TransactionExecutor;

    const-string/jumbo v3, "setForegroundAsync"

    new-instance v4, Landroidx/work/impl/utils/WorkForegroundUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2, p1, p0}, Landroidx/work/impl/utils/WorkForegroundUpdater$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/utils/WorkForegroundUpdater;Ljava/util/UUID;Landroidx/work/ForegroundInfo;Landroid/content/Context;)V

    invoke-static {p3, v3, v4}, Landroidx/work/ListenableFutureKt;->executeAsync(Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p0

    new-instance p1, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    const/16 p3, 0x9

    invoke-direct {p1, p4, p2, p0, p3}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-virtual {p1}, Landroidx/room/SharedSQLiteStatement;->dispatchCallbackSafely()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    :try_start_1
    sget-object p3, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p3}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mContext:Landroid/content/Context;

    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p4, p3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p4, Landroidx/room/TransactionExecutor;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    new-instance v0, Landroidx/work/impl/utils/WorkProgressUpdater;

    invoke-direct {v0, p0, p3}, Landroidx/work/impl/utils/WorkProgressUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/transition/TransitionValuesMaps;)V

    iget-object p0, p1, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->mId:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;->mParcelableData:Landroidx/work/multiprocess/parcelable/ParcelableData;

    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableData;->data:Landroidx/work/Data;

    iget-object p3, p3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p3, Landroidx/room/TransactionExecutor;

    const-string/jumbo v2, "updateProgress"

    new-instance v3, Landroidx/work/impl/utils/WorkProgressUpdater$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p0, p1, v4}, Landroidx/work/impl/utils/WorkProgressUpdater$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p3, v2, v3}, Landroidx/work/ListenableFutureKt;->executeAsync(Ljava/util/concurrent/Executor;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p0

    new-instance p1, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    const/16 p3, 0x8

    invoke-direct {p1, p4, p2, p0, p3}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-virtual {p1}, Landroidx/room/SharedSQLiteStatement;->dispatchCallbackSafely()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    :try_start_2
    sget-object p3, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p3}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p3, p3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p3, Landroidx/room/TransactionExecutor;

    iget-object p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->mWorkQuery:Landroidx/work/WorkQuery;

    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkManagerImpl;->getWorkInfos(Landroidx/work/WorkQuery;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p0

    new-instance p1, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    const/4 p4, 0x7

    invoke-direct {p1, p3, p2, p0, p4}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-virtual {p1}, Landroidx/room/SharedSQLiteStatement;->dispatchCallbackSafely()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p1

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_3
    iget-object p2, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p2, p2, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    const-string p4, "CancelAllWork"

    iget-object v2, p3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v2, Landroidx/room/TransactionExecutor;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/Worker$startWork$1;

    const/4 v3, 0x6

    invoke-direct {v0, v3, p0}, Landroidx/work/Worker$startWork$1;-><init>(ILjava/lang/Object;)V

    invoke-static {p2, p4, v2, v0}, Landroidx/work/OperationKt;->launchOperation(Landroidx/work/SystemClock;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/Data$Builder;

    move-result-object p0

    iget-object p2, p3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p2, Landroidx/room/TransactionExecutor;

    new-instance p3, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    const/4 p4, 0x6

    invoke-direct {p3, p2, p1, p0, p4}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-virtual {p3}, Landroidx/room/SharedSQLiteStatement;->dispatchCallbackSafely()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object p0, v0

    invoke-static {p1, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return v1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    const-string/jumbo p4, "tag"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    iget-object p4, p4, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    const-string v2, "CancelWorkByTag_"

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast v3, Landroidx/room/TransactionExecutor;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/utils/CancelWorkRunnable$forTag$1;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    invoke-static {p4, v2, v3, v0}, Landroidx/work/OperationKt;->launchOperation(Landroidx/work/SystemClock;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/Data$Builder;

    move-result-object p0

    iget-object p1, p3, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p1, Landroidx/room/TransactionExecutor;

    new-instance p3, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    const/4 p4, 0x4

    invoke-direct {p3, p1, p2, p0, p4}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-virtual {p3}, Landroidx/room/SharedSQLiteStatement;->dispatchCallbackSafely()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_5
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkManagerImpl;->cancelWorkById(Ljava/util/UUID;)Landroidx/work/Data$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p0, Landroidx/room/TransactionExecutor;

    new-instance p3, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    iget-object p1, p1, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    const/4 p4, 0x3

    invoke-direct {p3, p0, p2, p1, p4}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-virtual {p3}, Landroidx/room/SharedSQLiteStatement;->dispatchCallbackSafely()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->enqueueContinuation([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return v1

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_6
    sget-object p4, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p3, p4}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    iget-object p3, p3, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Landroidx/work/WorkRequest;

    invoke-static {p0, p1, p3}, Landroidx/work/impl/WorkerUpdater;->enqueueUniquelyNamedPeriodic(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/WorkRequest;)Landroidx/work/Data$Builder;

    move-result-object p1

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p0, Landroidx/room/TransactionExecutor;

    new-instance p3, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    iget-object p1, p1, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    check-cast p1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p2, p1, p4}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-virtual {p3}, Landroidx/room/SharedSQLiteStatement;->dispatchCallbackSafely()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_1

    :catchall_6
    move-exception v0

    move-object p0, v0

    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/RemoteExecuteKt$execute$3$1;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    iget-object v3, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    :try_start_7
    sget-object p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p0}, Landroidx/work/multiprocess/parcelable/ParcelConverters;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;

    iget-object v6, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequests;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance v2, Landroidx/work/impl/WorkContinuationImpl;

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v2}, Landroidx/work/impl/WorkContinuationImpl;->enqueue()Landroidx/work/Data$Builder;

    move-result-object p0

    iget-object p1, v3, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Ljava/lang/Object;

    check-cast p1, Landroidx/room/TransactionExecutor;

    new-instance p3, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;

    iget-object p0, p0, Landroidx/work/Data$Builder;->values:Ljava/lang/Object;

    check-cast p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p0, p4}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$1;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-virtual {p3}, Landroidx/room/SharedSQLiteStatement;->dispatchCallbackSafely()V

    goto :goto_1

    :catchall_7
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "enqueue needs at least one WorkRequest."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :goto_0
    invoke-static {p2, p0}, Landroidx/work/multiprocess/ListenableCallback$ListenableCallbackRunnable;->reportFailure(Landroidx/work/multiprocess/IWorkManagerImplCallback;Ljava/lang/Throwable;)V

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
