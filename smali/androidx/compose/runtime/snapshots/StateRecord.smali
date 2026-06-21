.class public abstract Landroidx/compose/runtime/snapshots/StateRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public next:Landroidx/compose/runtime/snapshots/StateRecord;

.field public snapshotId:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/runtime/snapshots/StateRecord;->snapshotId:J

    return-void
.end method


# virtual methods
.method public abstract assign(Landroidx/compose/runtime/snapshots/StateRecord;)V
.end method

.method public abstract create(J)Landroidx/compose/runtime/snapshots/StateRecord;
.end method
