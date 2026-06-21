.class public final Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;

.field public static final INSTANCE$1:Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;->INSTANCE:Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;

    new-instance v0, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;-><init>(II)V

    sput-object v0, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;->INSTANCE$1:Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Landroidx/compose/foundation/text/TextLinkScope$textRange$1$layoutResult$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object p0

    :pswitch_0
    new-instance p0, Landroidx/compose/ui/unit/IntOffset;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
