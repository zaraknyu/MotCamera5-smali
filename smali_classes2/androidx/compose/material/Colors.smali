.class public final Landroidx/compose/material/Colors;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final background$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isLight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final onBackground$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final onError$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final onPrimary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final onSecondary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final onSurface$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final primary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final primaryVariant$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final secondary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final secondaryVariant$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final surface$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(JJJJJJJJJJJJZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    sget-object p1, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    new-instance p2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p2, v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p2, p0, Landroidx/compose/material/Colors;->primary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p2, p3, p4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->primaryVariant$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p2, p5, p6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->secondary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p2, p7, p8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->secondaryVariant$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p2, p9, p10}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->background$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p2, p11, p12}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->surface$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {p2, p13, p14}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 p3, p15

    invoke-direct {p2, p3, p4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->onPrimary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 p3, p17

    invoke-direct {p2, p3, p4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->onSecondary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 p3, p19

    invoke-direct {p2, p3, p4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->onBackground$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 p3, p21

    invoke-direct {p2, p3, p4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->onSurface$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p2, Landroidx/compose/ui/graphics/Color;

    move-wide/from16 p3, p23

    invoke-direct {p2, p3, p4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->onError$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static/range {p25 .. p25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance p3, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {p3, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    iput-object p3, p0, Landroidx/compose/material/Colors;->isLight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final getPrimary-0d7_KjU()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/material/Colors;->primary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    return-wide v0
.end method

.method public final isLight()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/material/Colors;->isLight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Colors(primary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Colors;->primaryVariant$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Colors;->secondary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Colors;->secondaryVariant$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Colors;->background$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Colors;->surface$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Colors;->error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onPrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Colors;->onPrimary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onSecondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Colors;->onSecondary$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Colors;->onBackground$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Colors;->onSurface$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Colors;->onError$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v1, v1, Landroidx/compose/ui/graphics/Color;->value:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/material/Colors;->isLight()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
