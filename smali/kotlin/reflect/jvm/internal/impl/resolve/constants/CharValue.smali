.class public final Lkotlin/reflect/jvm/internal/impl/resolve/constants/CharValue;
.super Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerValueConstant;
.source "SourceFile"


# virtual methods
.method public final getType(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 0

    const-string p0, "module"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;->CHAR:Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->getPrimitiveKotlinType(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/ConstantValue;->value:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v1

    int-to-byte v1, v1

    if-eqz v1, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12

    if-eq v1, v2, :cond_0

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "?"

    goto :goto_0

    :pswitch_1
    const-string p0, "\\r"

    goto :goto_0

    :pswitch_2
    const-string p0, "\\f"

    goto :goto_0

    :pswitch_3
    const-string p0, "\\n"

    goto :goto_0

    :pswitch_4
    const-string p0, "\\t"

    goto :goto_0

    :pswitch_5
    const-string p0, "\\b"

    :goto_0
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "\\u%04X (\'%s\')"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
