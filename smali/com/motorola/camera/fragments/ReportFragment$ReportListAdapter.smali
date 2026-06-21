.class public final Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lcom/motorola/camera/CameraApp;[Ljava/lang/String;[I[Ljava/lang/String;[II)V
    .locals 9

    move/from16 v0, p7

    iput v0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->this$0:Landroidx/fragment/app/Fragment;

    const v3, 0x7f0d0082

    const v6, 0x7f0d0080

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public final getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->this$0:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    new-instance v0, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/fragments/CalibrationDataFragment$GetChildDataDBOperation;-><init>(Lcom/motorola/camera/fragments/CalibrationDataFragment;Landroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fragments/CalibrationDataFragment;->doDataIO(Lcom/google/android/gms/internal/mlkit_vision_common/zzjf;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->this$0:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/motorola/camera/fragments/ReportFragment;

    new-instance v0, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;

    invoke-direct {v0, p0, p1}, Lcom/motorola/camera/fragments/ReportFragment$GetChildDataDBOperation;-><init>(Lcom/motorola/camera/fragments/ReportFragment;Landroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fragments/ReportFragment;->doDataIO(Lcom/motorola/camera/fragments/ReportFragment$DBOperations;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onGroupCollapsed(I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->this$0:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mOpenGroupSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->this$0:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/motorola/camera/fragments/ReportFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onGroupExpanded(I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->this$0:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/CalibrationDataFragment;->mOpenGroupSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportListAdapter;->this$0:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/motorola/camera/fragments/ReportFragment;

    iget-object p0, p0, Lcom/motorola/camera/fragments/ReportFragment;->mOpenGroupSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
