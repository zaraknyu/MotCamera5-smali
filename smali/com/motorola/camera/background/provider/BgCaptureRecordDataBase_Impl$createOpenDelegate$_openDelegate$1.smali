.class public final Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;
.super Landroidx/room/RoomOpenDelegate;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/room/RoomDatabase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/room/RoomDatabase;

    .line 1
    const-string p1, "e052e49918b985576d177a7071e0a3de"

    const-string v0, "562c5cb97834304c4b63944675ad91dc"

    const/4 v1, 0x4

    .line 2
    invoke-direct {p0, p1, v1, v0}, Landroidx/room/RoomOpenDelegate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/room/RoomDatabase;

    .line 3
    const-string p1, "41277b012cb2d2018b09947c5a388aa5"

    const-string v0, "98dc219156d828cdf4184b14ded41339"

    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, p1, v1, v0}, Landroidx/room/RoomOpenDelegate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/db/TransactionDataBase_Impl;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/room/RoomDatabase;

    .line 5
    const-string p1, "374d2ffe666e5f85da87a5ef422c441d"

    const-string v0, "f61bd763acf03590786752819d1dc1e8"

    const/4 v1, 0x3

    .line 6
    invoke-direct {p0, p1, v1, v0}, Landroidx/room/RoomOpenDelegate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `transaction_table` (`id` INTEGER NOT NULL, `markForDelete` INTEGER NOT NULL, `ts` INTEGER NOT NULL, `clientId` INTEGER NOT NULL, `sourceId` INTEGER NOT NULL, `targetId` INTEGER NOT NULL, `jobNum` INTEGER NOT NULL, `taskNum` INTEGER NOT NULL, `priority` INTEGER NOT NULL, `useFifo` INTEGER NOT NULL, `comment` TEXT, `coProcId` INTEGER NOT NULL, `callerId` INTEGER NOT NULL, `msgType` INTEGER NOT NULL, `msg` TEXT, `returnCode` INTEGER NOT NULL, `iCallerId` INTEGER NOT NULL, `iMsgType` INTEGER NOT NULL, `iMsg` TEXT, `iReturnCode` INTEGER NOT NULL, `state` TEXT, `progressInd` INTEGER NOT NULL, `timeExpiration` INTEGER NOT NULL, `scheduled` INTEGER NOT NULL, `retryCount` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'374d2ffe666e5f85da87a5ef422c441d\')"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `fileData_table` (`id` INTEGER NOT NULL, `tag` INTEGER, `file_name` TEXT, `uri` TEXT, `ts` INTEGER, `MIME_type` TEXT, `format` TEXT, `time_out` INTEGER, `ref_count` INTEGER, `compression_type` TEXT, `encryption_type` TEXT, `mSize` INTEGER, `width` INTEGER, `height` INTEGER, `stride` INTEGER, PRIMARY KEY(`id`))"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'41277b012cb2d2018b09947c5a388aa5\')"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `bgCaptureRecord_table` (`id` INTEGER NOT NULL, `mediaStoreUri` TEXT NOT NULL, `ts` INTEGER NOT NULL, `expirationTime` INTEGER NOT NULL, `clientId` INTEGER NOT NULL, `sourceId` INTEGER NOT NULL, `targetId` INTEGER NOT NULL, `jobNum` INTEGER NOT NULL, `taskNum` INTEGER NOT NULL, `priority` INTEGER NOT NULL, `useFifo` INTEGER NOT NULL, `comment` TEXT, `progressLevel` INTEGER NOT NULL, `progressMax` INTEGER NOT NULL, `thumbWidth` INTEGER NOT NULL, `thumbHeight` INTEGER NOT NULL, `thumbnailPath` TEXT, `uuid` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'e052e49918b985576d177a7071e0a3de\')"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final dropAllTables(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `transaction_table`"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `fileData_table`"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS `bgCaptureRecord_table`"

    invoke-static {p1, p0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onOpen(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast p0, Lcom/motorola/camera/background/service/jms/db/TransactionDataBase_Impl;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    return-void

    :pswitch_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDatabase_Impl;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    return-void

    :pswitch_1
    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->this$0:Landroidx/room/RoomDatabase;

    check-cast p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPreMigrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V

    return-void

    :pswitch_0
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V

    return-void

    :pswitch_1
    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onValidateSchema(Landroidx/sqlite/SQLiteConnection;)Lcom/google/android/gms/common/internal/zzv;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDataBase_Impl$createOpenDelegate$_openDelegate$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "connection"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x1

    const/4 v3, 0x1

    const-string v5, "id"

    const-string v6, "INTEGER"

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v7, "markForDelete"

    const-string v8, "INTEGER"

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "markForDelete"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/room/util/TableInfo$Column;

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x1

    const/4 v6, 0x0

    const-string/jumbo v8, "ts"

    const-string v9, "INTEGER"

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "ts"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/room/util/TableInfo$Column;

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x1

    const/4 v7, 0x0

    const-string v9, "clientId"

    const-string v10, "INTEGER"

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "clientId"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroidx/room/util/TableInfo$Column;

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x1

    const/4 v8, 0x0

    const-string/jumbo v10, "sourceId"

    const-string v11, "INTEGER"

    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "sourceId"

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x1

    const/4 v9, 0x0

    const-string/jumbo v11, "targetId"

    const-string v12, "INTEGER"

    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "targetId"

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-string v12, "jobNum"

    const-string v13, "INTEGER"

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "jobNum"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroidx/room/util/TableInfo$Column;

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x1

    const/4 v11, 0x0

    const-string/jumbo v13, "taskNum"

    const-string v14, "INTEGER"

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "taskNum"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string/jumbo v6, "priority"

    const-string v7, "INTEGER"

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "priority"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string/jumbo v7, "useFifo"

    const-string v8, "INTEGER"

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "useFifo"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/room/util/TableInfo$Column;

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "comment"

    const-string v9, "TEXT"

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "comment"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/room/util/TableInfo$Column;

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "coProcId"

    const-string v10, "INTEGER"

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "coProcId"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroidx/room/util/TableInfo$Column;

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x1

    const/4 v8, 0x0

    const-string v10, "callerId"

    const-string v11, "INTEGER"

    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "callerId"

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x1

    const/4 v9, 0x0

    const-string v11, "msgType"

    const-string v12, "INTEGER"

    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "msgType"

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-string v12, "msg"

    const-string v13, "TEXT"

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "msg"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroidx/room/util/TableInfo$Column;

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v13, "returnCode"

    const-string v14, "INTEGER"

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "returnCode"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string v6, "iCallerId"

    const-string v7, "INTEGER"

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "iCallerId"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v7, "iMsgType"

    const-string v8, "INTEGER"

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "iMsgType"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/room/util/TableInfo$Column;

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "iMsg"

    const-string v9, "TEXT"

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "iMsg"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/room/util/TableInfo$Column;

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "iReturnCode"

    const-string v10, "INTEGER"

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "iReturnCode"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroidx/room/util/TableInfo$Column;

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-string/jumbo v10, "state"

    const-string v11, "TEXT"

    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "state"

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x1

    const/4 v9, 0x0

    const-string/jumbo v11, "progressInd"

    const-string v12, "INTEGER"

    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "progressInd"

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-string/jumbo v12, "timeExpiration"

    const-string v13, "INTEGER"

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "timeExpiration"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroidx/room/util/TableInfo$Column;

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v13, "scheduled"

    const-string v14, "INTEGER"

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "scheduled"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string/jumbo v6, "retryCount"

    const-string v7, "INTEGER"

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "retryCount"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Landroidx/room/util/TableInfo;

    const-string/jumbo v5, "transaction_table"

    invoke-direct {v4, v5, v0, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v1, v5}, Landroidx/room/util/TableInfo$Companion;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/internal/zzv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "transaction_table(com.motorola.camera.background.service.jms.db.Transaction).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n Found:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/internal/zzv;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    :goto_0
    return-object v1

    :pswitch_0
    const-string v0, "connection"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x1

    const/4 v3, 0x1

    const-string v5, "id"

    const-string v6, "INTEGER"

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "tag"

    const-string v8, "INTEGER"

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "tag"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/room/util/TableInfo$Column;

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    const-string v8, "file_name"

    const-string v9, "TEXT"

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "file_name"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/room/util/TableInfo$Column;

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-string/jumbo v9, "uri"

    const-string v10, "TEXT"

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "uri"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroidx/room/util/TableInfo$Column;

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-string/jumbo v10, "ts"

    const-string v11, "INTEGER"

    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "ts"

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-string v11, "MIME_type"

    const-string v12, "TEXT"

    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "MIME_type"

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-string v12, "format"

    const-string v13, "TEXT"

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "format"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroidx/room/util/TableInfo$Column;

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-string/jumbo v13, "time_out"

    const-string v14, "INTEGER"

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "time_out"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string/jumbo v6, "ref_count"

    const-string v7, "INTEGER"

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "ref_count"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-string v7, "compression_type"

    const-string v8, "TEXT"

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "compression_type"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/room/util/TableInfo$Column;

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "encryption_type"

    const-string v9, "TEXT"

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "encryption_type"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/room/util/TableInfo$Column;

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-string v9, "mSize"

    const-string v10, "INTEGER"

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "mSize"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroidx/room/util/TableInfo$Column;

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-string/jumbo v10, "width"

    const-string v11, "INTEGER"

    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "width"

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-string v11, "height"

    const-string v12, "INTEGER"

    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "height"

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x0

    const/4 v10, 0x0

    const-string/jumbo v12, "stride"

    const-string v13, "INTEGER"

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "stride"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Landroidx/room/util/TableInfo;

    const-string v5, "fileData_table"

    invoke-direct {v4, v5, v0, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v1, v5}, Landroidx/room/util/TableInfo$Companion;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/common/internal/zzv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fileData_table(com.motorola.camera.background.provider.filedatacontract.FileData).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n Found:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/internal/zzv;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    :goto_1
    return-object v1

    :pswitch_1
    const-string v0, "connection"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x1

    const/4 v3, 0x1

    const-string v5, "id"

    const-string v6, "INTEGER"

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v7, "mediaStoreUri"

    const-string v8, "TEXT"

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "mediaStoreUri"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/room/util/TableInfo$Column;

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x1

    const/4 v6, 0x0

    const-string/jumbo v8, "ts"

    const-string v9, "INTEGER"

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "ts"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/room/util/TableInfo$Column;

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x1

    const/4 v7, 0x0

    const-string v9, "expirationTime"

    const-string v10, "INTEGER"

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "expirationTime"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroidx/room/util/TableInfo$Column;

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x1

    const/4 v8, 0x0

    const-string v10, "clientId"

    const-string v11, "INTEGER"

    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "clientId"

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x1

    const/4 v9, 0x0

    const-string/jumbo v11, "sourceId"

    const-string v12, "INTEGER"

    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "sourceId"

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-string/jumbo v12, "targetId"

    const-string v13, "INTEGER"

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "targetId"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroidx/room/util/TableInfo$Column;

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/16 v16, 0x1

    const/4 v11, 0x0

    const-string v13, "jobNum"

    const-string v14, "INTEGER"

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "jobNum"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string/jumbo v6, "taskNum"

    const-string v7, "INTEGER"

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "taskNum"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string/jumbo v7, "priority"

    const-string v8, "INTEGER"

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "priority"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/room/util/TableInfo$Column;

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x1

    const/4 v6, 0x0

    const-string/jumbo v8, "useFifo"

    const-string v9, "INTEGER"

    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "useFifo"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroidx/room/util/TableInfo$Column;

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-string v9, "comment"

    const-string v10, "TEXT"

    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "comment"

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroidx/room/util/TableInfo$Column;

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x1

    const/4 v8, 0x0

    const-string/jumbo v10, "progressLevel"

    const-string v11, "INTEGER"

    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "progressLevel"

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroidx/room/util/TableInfo$Column;

    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v14, 0x1

    const/4 v9, 0x0

    const-string/jumbo v11, "progressMax"

    const-string v12, "INTEGER"

    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "progressMax"

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const/4 v14, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x1

    const/4 v10, 0x0

    const-string/jumbo v12, "thumbWidth"

    const-string v13, "INTEGER"

    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "thumbWidth"

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroidx/room/util/TableInfo$Column;

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v13, "thumbHeight"

    const-string v14, "INTEGER"

    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "thumbHeight"

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string/jumbo v6, "thumbnailPath"

    const-string v7, "TEXT"

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "thumbnailPath"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroidx/room/util/TableInfo$Column;

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string/jumbo v7, "uuid"

    const-string v8, "INTEGER"

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "uuid"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Landroidx/room/util/TableInfo;

    const-string v5, "bgCaptureRecord_table"

    invoke-direct {v4, v5, v0, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v1, v5}, Landroidx/room/util/TableInfo$Companion;->read(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/common/internal/zzv;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bgCaptureRecord_table(com.motorola.camera.background.provider.BgCaptureRecord).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n Found:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/google/android/gms/common/internal/zzv;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/internal/zzv;-><init>(ZLjava/lang/String;)V

    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
