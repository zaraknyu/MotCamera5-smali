.class public final Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $displayedText$delegate:Landroidx/compose/runtime/MutableState;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;->$displayedText$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;->$r8$classId:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$2$1;->$displayedText$delegate:Landroidx/compose/runtime/MutableState;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sget-object p1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-object v1

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/text/TextLayoutResult;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-object v1

    :pswitch_1
    check-cast p1, Ljava/util/List;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :pswitch_2
    check-cast p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;

    iget-boolean v0, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->isShowingSubstitution:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->substitution:Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;->original:Landroidx/compose/ui/text/AnnotatedString;

    :goto_1
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
