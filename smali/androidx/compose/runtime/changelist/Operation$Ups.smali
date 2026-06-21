.class public final Landroidx/compose/runtime/changelist/Operation$Ups;
.super Landroidx/compose/runtime/changelist/Operation;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$Ups;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$Ups;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$Ups;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$Ups;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/collection/CircularArray;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getInt(I)I

    move-result p1

    :goto_0
    if-ge p0, p1, :cond_0

    invoke-interface {p2}, Landroidx/compose/runtime/Applier;->up()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
