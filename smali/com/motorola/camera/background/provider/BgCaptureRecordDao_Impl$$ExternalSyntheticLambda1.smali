.class public final synthetic Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-wide p1, p0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 58

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-wide v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;->f$1:J

    move-object/from16 v2, p1

    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    const-string v3, "_connection"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "UPDATE transaction_table SET markForDelete = ? WHERE id = ?"

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    const/4 v4, 0x1

    int-to-long v5, v4

    :try_start_0
    invoke-interface {v3, v4, v5, v6}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    invoke-static {v2}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_0
    iget-wide v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;->f$1:J

    move-object/from16 v2, p1

    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    const-string v3, "_connection"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "SELECT * FROM transaction_table WHERE id = ?"

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v2, v3, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const-string v0, "id"

    invoke-static {v2, v0}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v0

    const-string v1, "markForDelete"

    invoke-static {v2, v1}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "ts"

    invoke-static {v2, v4}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v4

    const-string v5, "clientId"

    invoke-static {v2, v5}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v6, "sourceId"

    invoke-static {v2, v6}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "targetId"

    invoke-static {v2, v7}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v7

    const-string v8, "jobNum"

    invoke-static {v2, v8}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "taskNum"

    invoke-static {v2, v9}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "priority"

    invoke-static {v2, v10}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "useFifo"

    invoke-static {v2, v11}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v11

    const-string v12, "comment"

    invoke-static {v2, v12}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v12

    const-string v13, "coProcId"

    invoke-static {v2, v13}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v13

    const-string v14, "callerId"

    invoke-static {v2, v14}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v14

    const-string v15, "msgType"

    invoke-static {v2, v15}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v15

    const-string v3, "msg"

    invoke-static {v2, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 p1, v3

    const-string/jumbo v3, "returnCode"

    invoke-static {v2, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v16, v3

    const-string v3, "iCallerId"

    invoke-static {v2, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "iMsgType"

    invoke-static {v2, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "iMsg"

    invoke-static {v2, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "iReturnCode"

    invoke-static {v2, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string/jumbo v3, "state"

    invoke-static {v2, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string/jumbo v3, "progressInd"

    invoke-static {v2, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string/jumbo v3, "timeExpiration"

    invoke-static {v2, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string/jumbo v3, "scheduled"

    invoke-static {v2, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string/jumbo v3, "retryCount"

    invoke-static {v2, v3}, Landroidx/room/util/SQLiteStatementUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v25

    const/16 v26, 0x0

    if-eqz v25, :cond_7

    invoke-interface {v2, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v28

    invoke-interface {v2, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_0

    const/16 v30, 0x1

    goto :goto_1

    :cond_0
    const/16 v30, 0x0

    :goto_1
    invoke-interface {v2, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v31

    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v36

    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v38

    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    if-eqz v7, :cond_1

    const/16 v41, 0x1

    goto :goto_2

    :cond_1
    const/16 v41, 0x0

    :goto_2
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v42, v26

    goto :goto_3

    :cond_2
    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v42, v7

    :goto_3
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-interface {v2, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    move/from16 v10, p1

    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v46, v26

    :goto_4
    move/from16 v10, v16

    goto :goto_5

    :cond_3
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v46, v10

    goto :goto_4

    :goto_5
    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    move/from16 v11, v17

    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    move/from16 v12, v18

    invoke-interface {v2, v12}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    move/from16 v13, v19

    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v50, v26

    :goto_6
    move/from16 v13, v20

    goto :goto_7

    :cond_4
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v50, v13

    goto :goto_6

    :goto_7
    invoke-interface {v2, v13}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    move/from16 v14, v21

    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    :goto_8
    move/from16 v14, v22

    move-object/from16 v52, v26

    goto :goto_9

    :cond_5
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_8

    :goto_9
    invoke-interface {v2, v14}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    move/from16 v15, v23

    invoke-interface {v2, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v54

    move/from16 v33, v0

    move/from16 v15, v24

    invoke-interface {v2, v15}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-eqz v0, :cond_6

    const/16 v56, 0x1

    goto :goto_a

    :cond_6
    const/16 v56, 0x0

    :goto_a
    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v27, Lcom/motorola/camera/background/service/jms/db/Transaction;

    move/from16 v57, v0

    move/from16 v34, v4

    move/from16 v35, v5

    move/from16 v40, v6

    move/from16 v43, v7

    move/from16 v44, v8

    move/from16 v45, v9

    move/from16 v47, v10

    move/from16 v48, v11

    move/from16 v49, v12

    move/from16 v51, v13

    move/from16 v53, v14

    invoke-direct/range {v27 .. v57}, Lcom/motorola/camera/background/service/jms/db/Transaction;-><init>(JZJIIIJJIZLjava/lang/String;IIILjava/lang/String;IIILjava/lang/String;ILjava/lang/String;IJZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v26, v27

    goto :goto_b

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_7
    :goto_b
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v26

    :goto_c
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_1
    iget-wide v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;->f$1:J

    move-object/from16 v2, p1

    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    const-string v3, "_connection"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "DELETE FROM transaction_table WHERE id = ?"

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_2
    invoke-interface {v3, v4, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    invoke-static {v2}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_2
    iget-wide v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;->f$1:J

    move-object/from16 v2, p1

    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    const-string v3, "_connection"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "DELETE FROM fileData_table WHERE id = ?"

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_3
    invoke-interface {v3, v4, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    invoke-static {v2}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_3
    iget-wide v0, v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$$ExternalSyntheticLambda1;->f$1:J

    move-object/from16 v2, p1

    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    const-string v3, "_connection"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "DELETE FROM bgCaptureRecord_table WHERE id = ?"

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_4
    invoke-interface {v3, v4, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->step()Z

    invoke-static {v2}, Landroidx/room/util/SQLiteConnectionUtil;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
