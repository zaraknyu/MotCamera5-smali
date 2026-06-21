.class public final synthetic Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;

.field public final synthetic f$1:Lcom/motorola/camera/background/provider/filedatacontract/FileData;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;Lcom/motorola/camera/background/provider/filedatacontract/FileData;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;

    iput-object p2, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    packed-switch v0, :pswitch_data_0

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;

    iget-object v0, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__updateAdapterOfFileData:Lcom/motorola/camera/background/service/jms/db/TransactionDao_Impl$3;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    invoke-virtual {v0, p1, p0}, Landroidx/room/Room;->handle(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;

    iget-object v0, v0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl;->__insertAdapterOfFileData:Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$1;

    iget-object p0, p0, Lcom/motorola/camera/background/provider/filedatacontract/FileDataDao_Impl$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/background/provider/filedatacontract/FileData;

    invoke-virtual {v0, p1, p0}, Landroidx/room/Room;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
