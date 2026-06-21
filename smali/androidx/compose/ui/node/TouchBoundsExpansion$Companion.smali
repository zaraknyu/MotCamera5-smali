.class public final Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalReadScope;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$unpack(IJ)I
    .locals 1

    sget v0, Landroidx/compose/ui/node/TouchBoundsExpansion;->$r8$clinit:I

    mul-int/lit8 p0, p0, 0xf

    shr-long p0, p1, p0

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0x7fff

    return p0
.end method


# virtual methods
.method public entityType-OLwlOKw()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x8

    return p0

    :pswitch_0
    const/16 p0, 0x10

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrent(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p1, Landroidx/compose/ui/modifier/ProvidableModifierLocal;->defaultFactory:Lkotlin/jvm/internal/Lambda;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
