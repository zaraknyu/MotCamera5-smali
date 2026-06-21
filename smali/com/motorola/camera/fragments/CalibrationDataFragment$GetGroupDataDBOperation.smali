.class public final Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzjf;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    return-void
.end method


# virtual methods
.method public final query()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "RAW_SQL"

    const-string/jumbo v3, "select keytype, calbrtnvalue, _id from events WHERE calibrationkeytype =? group by keytype"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SELECTION_ARGS"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->rawQueryData(Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/motorola/camera/fragments/CalibrationDataFragment$ReportCursorWrapper;

    invoke-direct {v1, v0}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetGroupDataDBOperation;->this$0:Lcom/motorola/camera/fragments/CalibrationDataFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
