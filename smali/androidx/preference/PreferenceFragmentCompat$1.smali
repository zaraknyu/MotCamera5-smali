.class public final Landroidx/preference/PreferenceFragmentCompat$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/preference/PreferenceFragmentCompat$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->startAudioLensSwitchAnimation(FZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->startAudioLensSwitchAnimation(FZ)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    iget-object v4, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    iget-object v4, v4, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    if-eqz v4, :cond_6

    iget-boolean v0, v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mStopped:Z

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    if-le p1, v1, :cond_6

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    iget-object v1, v1, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v1, p1, v0}, Landroid/widget/CursorTreeAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    iget-object v0, v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mOpenGroupSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_2

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;

    if-eqz p1, :cond_6

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    iget-object v0, v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/CursorTreeAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    :goto_1
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    iget-object v0, v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mAdapter:Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->getGroupCount()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    iget-object v0, v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mOpenGroupSet:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    new-instance v2, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;

    invoke-direct {v2, v0, p1}, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fragments/CalibrationDataFragment;->doDataIO(Lcom/google/android/gms/internal/mlkit_vision_common/zzjf;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    :pswitch_1
    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_3

    :cond_7
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;

    iget-object p0, p0, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->responseHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->TAG:Ljava/lang/String;

    sget-object p1, Lcom/motorola/camera/background/service/jms/coprocessor/saveimageService/BgServiceConnection;->TAG:Ljava/lang/String;

    const-string v0, "Error while handling Response from Service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/IllegalStateException;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/WakeLockManager;->open()Z

    goto :goto_5

    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    iget v3, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    iget-object v5, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-wide v6, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    iget v8, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    :try_start_2
    sget-object v9, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->QUEUE_SECURE_LOCK:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    monitor-exit v9

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_4
    move-object v1, p1

    goto :goto_5

    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    iget v3, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    iget v5, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->size:I

    iget-wide v6, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    iget v8, p1, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    :try_start_5
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :goto_5
    if-eqz v1, :cond_c

    sget-object p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    monitor-enter p0

    :try_start_6
    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :cond_c
    :goto_6
    return-void

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v3, :cond_d

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_7

    :cond_d
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    :cond_e
    iget-object v2, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_7
    iget-object p1, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_f

    monitor-exit v2

    :goto_7
    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :cond_f
    new-array v0, p1, [Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v3, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v3, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move v2, v1

    :goto_8
    if-ge v2, p1, :cond_e

    aget-object v3, v0, v2

    iget-object v4, v3, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_9
    if-ge v5, v4, :cond_11

    iget-object v6, v3, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    iget-boolean v7, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->dead:Z

    if-nez v7, :cond_10

    iget-object v6, v6, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v8, v3, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/Object;

    check-cast v8, Landroid/content/Intent;

    invoke-virtual {v6, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :goto_a
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :pswitch_4
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v3, :cond_12

    goto :goto_b

    :cond_12
    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/preference/PreferenceFragmentCompat;

    iget-object p1, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object p1, p1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast p1, Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_13

    iget-object p0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->onAttached()V

    :cond_13
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
