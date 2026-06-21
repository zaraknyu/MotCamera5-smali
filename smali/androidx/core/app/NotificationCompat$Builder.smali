.class public final Landroidx/core/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mActions:Ljava/util/ArrayList;

.field public mAllowSystemGeneratedContextualActions:Z

.field public mChannelId:Ljava/lang/String;

.field public mContentIntent:Landroid/app/PendingIntent;

.field public mContentText:Ljava/lang/CharSequence;

.field public mContentTitle:Ljava/lang/CharSequence;

.field public mContext:Landroid/content/Context;

.field public mExtras:Landroid/os/Bundle;

.field public mInvisibleActions:Ljava/util/ArrayList;

.field public mLocalOnly:Z

.field public mNotification:Landroid/app/Notification;

.field public mPeople:Ljava/util/ArrayList;

.field public mPersonList:Ljava/util/ArrayList;

.field public mPriority:I

.field public mShowWhen:Z

.field public mStyle:Landroidx/room/concurrent/FileLock;


# direct methods
.method public static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final setStyle(Landroidx/room/concurrent/FileLock;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/room/concurrent/FileLock;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->mStyle:Landroidx/room/concurrent/FileLock;

    iget-object v0, p1, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    check-cast v0, Landroidx/core/app/NotificationCompat$Builder;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Landroidx/room/concurrent/FileLock;->lockFilename:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/room/concurrent/FileLock;)V

    :cond_0
    return-void
.end method
