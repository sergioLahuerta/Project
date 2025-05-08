package Model;

import java.util.ArrayList;

public class Alergeno implements iModel {
    private static int m_iId;
    private String  m_strName;
    private String  m_strDescription;

    public static int getM_iId() {
        return m_iId;
    }

    public void setM_iId(int m_iId) {
        this.m_iId = m_iId;
    }

    public String getM_strName() {
        return m_strName;
    }

    public void setM_strName(String m_strName) {
        this.m_strName = m_strName;
    }

    public String getM_strDescription() {
        return m_strDescription;
    }

    public void setM_strDescription(String m_strDescription) {
        this.m_strDescription = m_strDescription;
    }

    @Override
    public String toString() {
        return "Alergeno{" +
                "m_iId=" + m_iId +
                ", m_strName='" + m_strName + '\'' +
                ", m_strDescription='" + m_strDescription + '\'' +
                '}';
    }

    @Override
    public String fromArrayToJson(ArrayList bean) {
        return null;
    }

    @Override
    public String toArrayJSon(ArrayList bean) {
        return null;
    }
}
