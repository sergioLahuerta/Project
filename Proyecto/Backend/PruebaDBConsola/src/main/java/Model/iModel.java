package Model;

import java.util.ArrayList;

public interface iModel<E> {

    public String fromArrayToJson(ArrayList<E> bean);
    public String toArrayJSon(ArrayList<E> bean);

}
