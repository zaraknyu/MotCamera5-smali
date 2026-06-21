.class public final Landroidx/compose/runtime/SourceInformationSlotTableGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final identityPath:Landroidx/compose/runtime/AnchoredGroupPath;

.field public final parent:I

.field public final table:Landroidx/compose/runtime/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;ILandroidx/compose/runtime/GroupSourceInformation;Landroidx/compose/runtime/AnchoredGroupPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iput p2, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->parent:I

    iput-object p4, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/AnchoredGroupPath;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 4

    new-instance v0, Landroidx/compose/runtime/GroupIterator;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/AnchoredGroupPath;

    iget-object v3, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iget p0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->parent:I

    invoke-direct {v0, v3, p0, v1, v2}, Landroidx/compose/runtime/GroupIterator;-><init>(Landroidx/compose/runtime/SlotTable;ILandroidx/compose/runtime/GroupSourceInformation;Landroidx/compose/runtime/AnchoredGroupPath;)V

    return-object v0
.end method
