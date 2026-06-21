.class public final Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final synthetic $$delegate_0:Lkotlinx/coroutines/internal/ContextScope;

.field public final eventListener:Ljava/lang/ref/WeakReference;

.field public final lastCaptureHandler:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v8, "orientation"

    const-string/jumbo v9, "relative_path"

    const-string v0, "_id"

    const-string v1, "datetaken"

    const-string v2, "date_modified"

    const-string/jumbo v3, "volume_name"

    const-string v4, "_display_name"

    const-string/jumbo v5, "width"

    const-string v6, "_data"

    const-string v7, "height"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->$$delegate_0:Lkotlinx/coroutines/internal/ContextScope;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->eventListener:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->lastCaptureHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static queryLastCapture(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "DCIM/Camera%"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCIM/Google Photos%"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v4, "relative_path LIKE ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android:query-arg-sql-selection"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android:query-arg-sql-selection-args"

    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "android:query-arg-sql-sort-order"

    const-string v1, "CASE WHEN datetaken NOT NULL THEN datetaken ELSE date_modified*1000 END DESC"

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android:query-arg-sql-limit"

    const-string v1, "1"

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android:query-arg-match-pending"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/motorola/camera/storage/MediaStoreClient;->queryOrNull(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final buildCameraData(Landroid/database/Cursor;Landroid/net/Uri;I)Lcom/motorola/camera/CameraData;
    .locals 31

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "_BURST"

    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "date_modified"

    const-string v5, "datetaken"

    const-string v6, "_data"

    const-string v7, "height"

    const-string/jumbo v8, "width"

    const-string v9, "_id"

    const-string v11, "_display_name"

    const-string v12, "orientation"

    if-nez p3, :cond_d

    const/4 v13, 0x1

    :try_start_0
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/motorola/camera/BurstShotFileUtils;->FORMAT_BURST_SUFFIX:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v16, 0x0

    const-string v3, "_COVER"

    if-eqz v15, :cond_0

    :try_start_1
    invoke-virtual {v14, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    move v15, v13

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_5

    const-string/jumbo v15, "volume_name"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget-object v10, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->PROJECTION:[Ljava/lang/String;

    invoke-static {v15, v14, v10}, Lcom/motorola/camera/provider/photos/PhotosProvider;->queryFilesOnVolume(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v10, :cond_4

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-le v14, v13, :cond_4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    move v15, v13

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    if-nez v15, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->isLast()Z

    move-result v15
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v10

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v3, v10

    move-object/from16 v10, p0

    goto :goto_6

    :cond_3
    :goto_2
    move-object v3, v10

    goto :goto_5

    :cond_4
    move-object v3, v10

    move-object v10, v1

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v3, v16

    goto/16 :goto_b

    :catch_1
    move-exception v0

    :goto_4
    move-object/from16 v10, p0

    move-object/from16 v3, v16

    goto :goto_6

    :cond_5
    move-object v10, v1

    move-object/from16 v3, v16

    :goto_5
    if-ne v10, v1, :cond_6

    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_2
    move-exception v0

    const/16 v16, 0x0

    goto :goto_3

    :catch_2
    move-exception v0

    const/16 v16, 0x0

    goto :goto_4

    :goto_6
    :try_start_3
    iget-object v10, v10, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->eventListener:Ljava/lang/ref/WeakReference;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/camera/EventListener;

    if-eqz v10, :cond_7

    new-instance v14, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v13, 0x0

    invoke-direct {v14, v15, v0, v13}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-interface {v10, v14}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    goto/16 :goto_b

    :cond_7
    :goto_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v10, v1

    :cond_9
    :goto_8
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    sget-boolean v9, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v3, v7}, Landroid/util/Size;-><init>(II)V

    invoke-static {v9, v8}, Lcom/motorola/camera/utility/ColorUtil;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v3

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v17, Lcom/motorola/camera/CameraData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v27

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v28

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, ".dng"

    const/4 v13, 0x0

    invoke-static {v7, v2, v13}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {v0, v1}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(J)Lcom/motorola/camera/CameraData;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_9

    :cond_a
    const/4 v10, 0x0

    goto :goto_a

    :cond_b
    :goto_9
    const/4 v10, 0x1

    :goto_a
    const/16 v30, 0x0

    move-object/from16 v21, v7

    invoke-direct/range {v17 .. v30}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/motorola/camera/CameraData;->mBundle:Landroidx/sqlite/db/SimpleSQLiteQuery;

    const-string v2, "PROCESSING_URI"

    invoke-virtual {v1, v2, v10}, Landroidx/sqlite/db/SimpleSQLiteQuery;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :goto_b
    if-eqz v3, :cond_c

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :cond_d
    const/16 v16, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sget-boolean v8, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    new-instance v8, Landroid/util/Size;

    invoke-direct {v8, v0, v3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v8, v7}, Lcom/motorola/camera/utility/ColorUtil;->convertSize(Landroid/util/Size;I)Landroid/util/Size;

    move-result-object v0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v6, ".pending"

    const/4 v13, 0x0

    invoke-static {v3, v6, v13}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_c

    :cond_e
    new-instance v17, Lcom/motorola/camera/CameraData;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getGlobalSessionUUID()J

    move-result-wide v18

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v27

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v28

    move/from16 v30, p3

    move-object/from16 v22, v3

    invoke-direct/range {v17 .. v30}, Lcom/motorola/camera/CameraData;-><init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJIIII)V

    return-object v17

    :cond_f
    const/16 v16, 0x0

    :goto_c
    return-object v16
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/QueryLastCaptureTask;->$$delegate_0:Lkotlinx/coroutines/internal/ContextScope;

    iget-object p0, p0, Lkotlinx/coroutines/internal/ContextScope;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method
