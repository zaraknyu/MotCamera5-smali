.class public final Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$3;
.super Landroidx/room/Room;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 4

    iget p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$3;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    const-string/jumbo p0, "statement"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entity"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    iget-wide v0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->tag:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->fileName:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->uri:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->ts:Ljava/lang/Long;

    const/4 v0, 0x5

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_2
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->MIMEType:Ljava/lang/String;

    const/4 v0, 0x6

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_3
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->format:Ljava/lang/String;

    const/4 v0, 0x7

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_4
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->expirationTime:Ljava/lang/Long;

    const/16 v0, 0x8

    if-nez p0, :cond_5

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_5
    const/4 p0, 0x0

    int-to-long v0, p0

    const/16 p0, 0x9

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->compressionType:Ljava/lang/String;

    const/16 v0, 0xa

    if-nez p0, :cond_6

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_6
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->encryptionType:Ljava/lang/String;

    const/16 v0, 0xb

    if-nez p0, :cond_7

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_7
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->mSize:Ljava/lang/Integer;

    const/16 v0, 0xc

    if-nez p0, :cond_8

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_8
    iget-object p0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->dims:Lcom/motorola/camera/background/provider/filedatacontract/DimProp;

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->width:Ljava/lang/Integer;

    const/16 v1, 0xd

    if-nez v0, :cond_9

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_9
    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->height:Ljava/lang/Integer;

    const/16 v1, 0xe

    if-nez v0, :cond_a

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_a
    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/DimProp;->stride:Ljava/lang/Integer;

    const/16 v0, 0xf

    if-nez p0, :cond_b

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_b
    const/16 p0, 0x10

    iget-wide v0, p2, Lcom/motorola/camera/background/provider/filedatacontract/FileData;->id:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void

    :pswitch_0
    check-cast p2, Lcom/motorola/camera/background/service/jms/db/Transaction;

    const-string/jumbo p0, "statement"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entity"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->markForDelete:Z

    const/4 v0, 0x2

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x3

    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->ts:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->clientId:I

    int-to-long v0, p0

    const/4 p0, 0x4

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->sourceId:I

    int-to-long v0, p0

    const/4 p0, 0x5

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->targetId:I

    int-to-long v0, p0

    const/4 p0, 0x6

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 p0, 0x7

    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->jobNum:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x8

    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->taskNum:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->priority:I

    int-to-long v0, p0

    const/16 p0, 0x9

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->useFifo:Z

    const/16 v0, 0xa

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->comment:Ljava/lang/String;

    const/16 v0, 0xb

    if-nez p0, :cond_c

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_c

    :cond_c
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_c
    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->coProcId:I

    int-to-long v0, p0

    const/16 p0, 0xc

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->callerId:I

    int-to-long v0, p0

    const/16 p0, 0xd

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->msgType:I

    int-to-long v0, p0

    const/16 p0, 0xe

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->msg:Ljava/lang/String;

    const/16 v0, 0xf

    if-nez p0, :cond_d

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_d

    :cond_d
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_d
    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->returnCode:I

    int-to-long v0, p0

    const/16 p0, 0x10

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->iCallerId:I

    int-to-long v0, p0

    const/16 p0, 0x11

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsgType:I

    int-to-long v0, p0

    const/16 p0, 0x12

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->iMsg:Ljava/lang/String;

    const/16 v0, 0x13

    if-nez p0, :cond_e

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_e

    :cond_e
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_e
    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->iReturnCode:I

    int-to-long v0, p0

    const/16 p0, 0x14

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-object p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->state:Ljava/lang/String;

    const/16 v0, 0x15

    if-nez p0, :cond_f

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_f

    :cond_f
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    :goto_f
    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->progressInd:I

    int-to-long v0, p0

    const/16 p0, 0x16

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x17

    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->timeExpiration:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget-boolean p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->scheduled:Z

    const/16 v0, 0x18

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    iget p0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->retryCount:I

    int-to-long v0, p0

    const/16 p0, 0x19

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 p0, 0x1a

    iget-wide v0, p2, Lcom/motorola/camera/background/service/jms/db/Transaction;->id:J

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$3;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "UPDATE OR ABORT `fileData_table` SET `id` = ?,`tag` = ?,`file_name` = ?,`uri` = ?,`ts` = ?,`MIME_type` = ?,`format` = ?,`time_out` = ?,`ref_count` = ?,`compression_type` = ?,`encryption_type` = ?,`mSize` = ?,`width` = ?,`height` = ?,`stride` = ? WHERE `id` = ?"

    return-object p0

    :pswitch_0
    const-string p0, "UPDATE OR ABORT `transaction_table` SET `id` = ?,`markForDelete` = ?,`ts` = ?,`clientId` = ?,`sourceId` = ?,`targetId` = ?,`jobNum` = ?,`taskNum` = ?,`priority` = ?,`useFifo` = ?,`comment` = ?,`coProcId` = ?,`callerId` = ?,`msgType` = ?,`msg` = ?,`returnCode` = ?,`iCallerId` = ?,`iMsgType` = ?,`iMsg` = ?,`iReturnCode` = ?,`state` = ?,`progressInd` = ?,`timeExpiration` = ?,`scheduled` = ?,`retryCount` = ? WHERE `id` = ?"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
