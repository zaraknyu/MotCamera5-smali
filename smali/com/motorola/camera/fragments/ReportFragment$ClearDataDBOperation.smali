.class public final Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;
.super Lcom/motorola/camera/fragments/ReportFragment$DBOperations;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fragments/ReportFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/ReportFragment;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    invoke-direct {p0}, Lcom/motorola/camera/fragments/ReportFragment$DBOperations;-><init>()V

    return-void
.end method


# virtual methods
.method public final query()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KPI"

    const-string v2, "0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "RAW_SQL"

    const-string v3, "SELECT keytag, ROUND(AVG(keyvalue)) AS keyvalue, camera, coldstart, mode, _id FROM events WHERE keytype = ? AND taglevel = ? GROUP BY keytag, camera, coldstart, mode ORDER BY keytag ASC"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SELECTION_ARGS"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->rawQueryData(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/motorola/camera/fragments/ReportFragment$DBOperations;->mCancelled:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;-><init>(Landroid/database/Cursor;I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KPI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "WHERE_CLAUSE"

    const-string v3, "keytype = ?"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "WHERE_ARGS"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->deleteData(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/motorola/camera/fragments/ReportFragment$DBOperations;->mCancelled:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ClearDataDBOperation;->this$0:Lcom/motorola/camera/fragments/ReportFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
