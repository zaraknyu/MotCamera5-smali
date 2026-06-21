.class public final Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$$Lambda$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$$Lambda$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lkotlin/reflect/KParameter;

    check-cast p1, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Lkotlin/reflect/KParameter;

    check-cast p2, Lkotlin/reflect/jvm/internal/KParameterImpl;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/KParameterImpl;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;

    sget-object p0, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->LOCAL_PROPERTY_SIGNATURE:Lkotlin/text/Regex;

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities;->compare(Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;Lkotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
