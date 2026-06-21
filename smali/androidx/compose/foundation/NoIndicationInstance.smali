.class public final Landroidx/compose/foundation/NoIndicationInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;
.implements Landroidx/compose/foundation/IndicationInstance;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/NoIndicationInstance;

.field public static final INSTANCE$1:Landroidx/compose/foundation/NoIndicationInstance;

.field public static final INSTANCE$2:Landroidx/compose/foundation/NoIndicationInstance;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/NoIndicationInstance;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/foundation/NoIndicationInstance;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/NoIndicationInstance;->INSTANCE$1:Landroidx/compose/foundation/NoIndicationInstance;

    new-instance v0, Landroidx/compose/foundation/NoIndicationInstance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/NoIndicationInstance;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/NoIndicationInstance;->INSTANCE:Landroidx/compose/foundation/NoIndicationInstance;

    new-instance v0, Landroidx/compose/foundation/NoIndicationInstance;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/compose/foundation/NoIndicationInstance;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/NoIndicationInstance;->INSTANCE$2:Landroidx/compose/foundation/NoIndicationInstance;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/NoIndicationInstance;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Brush;
    .locals 4

    iget p0, p0, Landroidx/compose/foundation/NoIndicationInstance;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Landroidx/compose/foundation/ClipScrollableContainerKt;->MaxSupportedElevation:F

    invoke-interface {p4, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    int-to-float p0, p0

    new-instance p3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    new-instance p4, Landroidx/compose/ui/geometry/Rect;

    neg-float v0, p0

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    add-float/2addr v1, p0

    const-wide v2, 0xffffffffL

    and-long p0, p1, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    const/4 p1, 0x0

    invoke-direct {p4, v0, p1, v1, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    invoke-direct {p3, p4}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    return-object p3

    :pswitch_0
    sget p0, Landroidx/compose/foundation/ClipScrollableContainerKt;->MaxSupportedElevation:F

    invoke-interface {p4, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    int-to-float p0, p0

    new-instance p3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    new-instance p4, Landroidx/compose/ui/geometry/Rect;

    neg-float v0, p0

    const/16 v1, 0x20

    shr-long v1, p1, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    add-float/2addr p1, p0

    const/4 p0, 0x0

    invoke-direct {p4, p0, v0, v1, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    invoke-direct {p3, p4}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public drawIndication(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    return-void
.end method
