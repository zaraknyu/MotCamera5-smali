.class public final Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mClock:Landroidx/work/SystemClock;

.field public final mStartId:I

.field public final mWorkConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/SystemClock;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mClock:Landroidx/work/SystemClock;

    iput p3, p0, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mStartId:I

    iget-object p1, p4, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    iget-object p1, p1, Landroidx/work/impl/WorkManagerImpl;->mTrackers:Lcom/motorola/camera/AppFeatures;

    new-instance p2, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-direct {p2, p1}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Lcom/motorola/camera/AppFeatures;)V

    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/ConstraintsCommandHandler;->mWorkConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    return-void
.end method
