.class public final synthetic Lcom/motorola/camera/fragments/ReportFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;


# virtual methods
.method public final setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3

    move-object p0, p2

    check-cast p0, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/database/CursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyvalue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_0
    sget-object v0, Landroidx/room/concurrent/FileLock;->mDebugReportDisplayStrings:Landroidx/room/concurrent/FileLock;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/room/concurrent/FileLock;

    const/16 v2, 0x18

    invoke-direct {v0, v2}, Landroidx/room/concurrent/FileLock;-><init>(I)V

    sput-object v0, Landroidx/room/concurrent/FileLock;->mDebugReportDisplayStrings:Landroidx/room/concurrent/FileLock;

    :cond_1
    sget-object v0, Landroidx/room/concurrent/FileLock;->mDebugReportDisplayStrings:Landroidx/room/concurrent/FileLock;

    invoke-virtual {p0, p3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget p0, p0, Lcom/motorola/camera/fragments/ReportFragment$ReportCursorWrapper;->mTag:I

    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    iget-object v0, v0, Landroidx/room/concurrent/FileLock;->lockChannel:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    if-nez v0, :cond_3

    const-string p0, "Invalid"

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p3, p2, p0}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;->getDisplayString(Ljava/lang/String;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1
.end method
